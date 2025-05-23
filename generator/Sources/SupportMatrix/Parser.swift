import Foundation

import Yams

/// A parser for vehicle metadata from the workspace directory
public class VehicleMetadataParser {
  private let fileManager = FileManager.default
  private let workspacePath: String

  // Special cases for makes with dashes in their names
  private let specialMakes = [
    "Alfa-Romeo",
    "Aston-Martin",
    "Mercedes-Benz",
    "Rolls-Royce",
    "Land-Rover",
  ]

  public init(workspacePath: String) {
    self.workspacePath = workspacePath
  }

  /// Parse all vehicles in the workspace directory
  public func parseAllVehicles() throws -> VehicleMetadata {
    var metadata = VehicleMetadata()

    let workspaceContents = try fileManager.contentsOfDirectory(atPath: workspacePath)

    for item in workspaceContents {
      let itemPath = (workspacePath as NSString).appendingPathComponent(item)
      var isDirectory: ObjCBool = false

      if fileManager.fileExists(atPath: itemPath, isDirectory: &isDirectory),
        isDirectory.boolValue,
        item.contains("-")
      {
        do {
          let (make, model) = parseMakeAndModel(from: item)
          let vehicleData = try parseVehicleDirectory(at: itemPath, make: make, model: model)

          for (year, commandSupport) in vehicleData {
            metadata.addVehicle(make: make, model: model, year: year, commandSupport: commandSupport)

            if let confirmedSignals = commandSupport.confirmedSignals {
              metadata.confirmedSignals[make, default: [:]][model, default: [:]][year] = confirmedSignals
            }
          }

          // Parse generations data
          let generations = try parseGenerations(at: itemPath, make: make, model: model)

          if !generations.isEmpty {
            metadata.addGenerations(make: make, model: model, generations: generations)
          }
        } catch {
          print("Error parsing vehicle directory \(item): \(error)")
        }
      }
    }

    return metadata
  }

  /// Parse make and model from a directory name
  private func parseMakeAndModel(from directoryName: String) -> (make: String, model: String) {
    // Check if it's one of the special makes
    for specialMake in specialMakes {
      if directoryName.hasPrefix(specialMake + "-") {
        let model = String(directoryName.dropFirst(specialMake.count + 1))  // +1 for the dash
        return (specialMake, model)
      }
    }

    // Regular case: First component is make, rest is model
    let components = directoryName.components(separatedBy: "-")
    let make = components[0]
    let model = components.dropFirst().joined(separator: "-")

    return (make, model)
  }

  /// Parse a vehicle directory for command support information
  private func parseVehicleDirectory(at path: String, make: String, model: String) throws -> [Year: CommandSupport] {
    var yearData = [Year: CommandSupport]()

    // Path to tests/test_cases
    let testCasesPath = (path as NSString).appendingPathComponent("tests/test_cases")

    if !fileManager.fileExists(atPath: testCasesPath) {
      return yearData
    }

    let years = try fileManager.contentsOfDirectory(atPath: testCasesPath)

    for yearString in years {
      let yearPath = (testCasesPath as NSString).appendingPathComponent(yearString)
      var isDirectory: ObjCBool = false

      if fileManager.fileExists(atPath: yearPath, isDirectory: &isDirectory),
        isDirectory.boolValue,
        let year = Int(yearString) {
        let commandSupportPath = (yearPath as NSString).appendingPathComponent("command_support.yaml")

        var commandSupport: CommandSupport
        if fileManager.fileExists(atPath: commandSupportPath) {
          do {
            let yamlData = try String(contentsOfFile: commandSupportPath, encoding: .utf8)
            commandSupport = try YAMLDecoder().decode(CommandSupport.self, from: yamlData)
            yearData[year] = commandSupport
          } catch let error {
            print("Failed to load vehicle data: \(error)")
            commandSupport = CommandSupport(modelYear: year)
          }
        } else {
          commandSupport = CommandSupport(modelYear: year)
        }

        let commandsPath = (yearPath as NSString).appendingPathComponent("commands")
        if fileManager.fileExists(atPath: commandsPath) {
          let commandFiles = try fileManager.contentsOfDirectory(atPath: commandsPath)
          var confirmedCommandIDs = Set<String>()
          var signals = Set<String>()
          for commandFile in commandFiles {
            if commandFile.hasSuffix(".yaml") || commandFile.hasSuffix(".yml") {
              let commandFilePath = (commandsPath as NSString).appendingPathComponent(commandFile)
              let yamlData = try String(contentsOfFile: commandFilePath, encoding: .utf8)

              // Parse YAML structure using Yams
              if let yamlDict = try Yams.load(yaml: yamlData) as? [String: Any] {
                if let commandID = yamlDict["command_id"] as? String {
                  confirmedCommandIDs.insert(commandID)
                }

                if let testCases = yamlDict["test_cases"] as? [[String: Any]] {
                  for testCase in testCases {
                    if let expectedValues = testCase["expected_values"] as? [String: Any] {
                      // Add all keys from expected_values as confirmed signals
                      for key in expectedValues.keys {
                        signals.insert(key)
                      }
                    }
                  }
                }
              }
            }
          }
          commandSupport.confirmedCommandIDs = confirmedCommandIDs
          commandSupport.confirmedSignals = signals
        }

        yearData[year] = commandSupport
      }
    }

    return yearData
  }

  /// Parse generations data from generations.yaml file
  private func parseGenerations(at path: String, make: String, model: String) throws -> [Generation] {
    // Path to generations.yaml
    let generationsPath = (path as NSString).appendingPathComponent("generations.yaml")

    if !fileManager.fileExists(atPath: generationsPath) {
      return []
    }

    do {
      let yamlData = try String(contentsOfFile: generationsPath, encoding: .utf8)

      // Use Yams to decode the generations data
      struct GenerationsContainer: Codable {
        let generations: [Generation]
      }

      let generationsContainer = try YAMLDecoder().decode(GenerationsContainer.self, from: yamlData)
      return generationsContainer.generations
    } catch {
      print("Failed to parse generations data for \(make)-\(model): \(error)")
      return []
    }
  }
}
