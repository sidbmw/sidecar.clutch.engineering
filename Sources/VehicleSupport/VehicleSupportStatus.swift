import Foundation

package typealias Make = String

package struct VehicleSupportStatus: Codable, Equatable, Comparable {
  /// Returns true if this status represents an EV/Hybrid vehicle based on its signals
  var isElectrified: Bool {
    stateOfCharge != nil || stateOfHealth != nil || charging != nil || cells != nil
  }

  /// Returns true if this status has explicitly marked EV signals as not applicable
  var hasExplicitEVSignalsNA: Bool {
    stateOfCharge == .na ||
    stateOfHealth == .na ||
    charging == .na ||
    cells == .na
  }

  /// Returns true if the incoming status is compatible with this one
  package func isCompatibleWith(incomingStatus: VehicleSupportStatus) -> Bool {
    // If this status has explicit NA markers for EV signals and the incoming status
    // reports EV capabilities, they're incompatible
    if hasExplicitEVSignalsNA && incomingStatus.isElectrified {
      return false
    }

    // All other cases are considered compatible
    return true
  }

  package static func loadAll() throws -> [Make: [Model: [VehicleSupportStatus]]] {
    let url = Bundle.module.url(forResource: "supportmatrix", withExtension: "json")!
    let data = try Data(contentsOf: url)
    let entries = try JSONDecoder().decode([VehicleSupportEntry].self, from: data)
    return entries.toGroupedDictionary()
  }

  package let years: ClosedRange<Int>

  package enum TestingStatus: Codable, Equatable {
    case onboarded
    case partiallyOnboarded
    case testerNeeded
    case activeTester(String)

    enum CodingKeys: CodingKey {
      case activeTester
    }

    package func encode(to encoder: any Encoder) throws {
      switch self {
      case .onboarded:
        var container = encoder.singleValueContainer()
        try container.encode("onboarded")
      case .partiallyOnboarded:
        var container = encoder.singleValueContainer()
        try container.encode("partiallyOnboarded")
      case .testerNeeded:
        var container = encoder.singleValueContainer()
        try container.encode("testerNeeded")
      case .activeTester(let a0):
        var container = encoder.container(keyedBy: VehicleSupportStatus.TestingStatus.CodingKeys.self)
        try container.encode(a0, forKey: .activeTester)
      }
    }

    package init(from decoder: any Decoder) throws {
      // First try to decode as a single string value
      if let container = try? decoder.singleValueContainer(),
         let value = try? container.decode(String.self) {
        switch value {
        case "onboarded":
          self = .onboarded
        case "partiallyOnboarded":
          self = .partiallyOnboarded
        case "testerNeeded":
          self = .testerNeeded
        default:
          throw DecodingError.dataCorruptedError(
            in: container,
            debugDescription: "Unknown testing status: \(value)"
          )
        }
        return
      }

      // If not a single value, try to decode as keyed container for activeTester
      let container = try decoder.container(keyedBy: VehicleSupportStatus.TestingStatus.CodingKeys.self)
      if let username = try? container.decode(String.self, forKey: .activeTester) {
        self = .activeTester(username)
        return
      }

      throw DecodingError.dataCorruptedError(
        in: try decoder.singleValueContainer(),
        debugDescription: "Unable to decode testing status"
      )
    }
  }
  package let testingStatus: TestingStatus

  package enum SupportState: String, Codable {
    case all
    case obd
    case ota
    case na
  }
  package let stateOfCharge: SupportState?
  package let stateOfHealth: SupportState?
  package let charging: SupportState?
  package let cells: SupportState?
  package let fuelLevel: SupportState?
  package let speed: SupportState?
  package let range: SupportState?
  package let odometer: SupportState?
  package let tirePressure: SupportState?

  package init(years: ClosedRange<Int>, testingStatus: TestingStatus, stateOfCharge: SupportState?, stateOfHealth: SupportState?, charging: SupportState?, cells: SupportState?, fuelLevel: SupportState?, speed: SupportState?, range: SupportState?, odometer: SupportState?, tirePressure: SupportState?) {
    self.years = years
    self.testingStatus = testingStatus
    self.stateOfCharge = stateOfCharge
    self.stateOfHealth = stateOfHealth
    self.charging = charging
    self.cells = cells
    self.fuelLevel = fuelLevel
    self.speed = speed
    self.range = range
    self.odometer = odometer
    self.tirePressure = tirePressure
  }

  package init(years: Int, testingStatus: TestingStatus, stateOfCharge: SupportState? = .na, stateOfHealth: SupportState? = .na, charging: SupportState? = .na, cells: SupportState? = .na, fuelLevel: SupportState? = .na, speed: SupportState? = nil, range: SupportState? = nil, odometer: SupportState? = nil, tirePressure: SupportState? = nil) {
    self.init(years: years...years, testingStatus: testingStatus, stateOfCharge: stateOfCharge, stateOfHealth: stateOfHealth, charging: charging, cells: cells, fuelLevel: fuelLevel, speed: speed, range: range, odometer: odometer, tirePressure: tirePressure)
  }

  package static func testerNeeded(years: ClosedRange<Int>) -> Self {
    .init(years: years, testingStatus: .testerNeeded, stateOfCharge: nil, stateOfHealth: nil, charging: nil, cells: nil, fuelLevel: nil, speed: nil, range: nil, odometer: nil, tirePressure: nil)
  }

  static func testerNeeded(years: Int) -> Self {
    .testerNeeded(years: years...years)
  }

  static func newTester(years: ClosedRange<Int>, username: String) -> Self {
    .init(years: years, testingStatus: .activeTester(username), stateOfCharge: nil, stateOfHealth: nil, charging: nil, cells: nil, fuelLevel: nil, speed: nil, range: nil, odometer: nil, tirePressure: nil)
  }

  static func newTester(years: Int, username: String) -> Self {
    .newTester(years: years...years, username: username)
  }

  package static func < (lhs: VehicleSupportStatus, rhs: VehicleSupportStatus) -> Bool {
    return lhs.years.lowerBound < rhs.years.lowerBound
  }
}
