import Foundation

typealias Make = String
typealias Model = String
let makes: [Make: [Model: [VehicleSupportStatus]]] = [
  "Abarth": [
    " 595": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Acura": [
    " Integra": [
      .init(years: 1996...2001, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .init(years: 2023...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    "TLX": [
      .init(years: 2015...2015, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .obd),
      .testerNeeded(years: 2016...2025)
    ],
  ],
  "Alfa Romeo": [
    " Giulietta": [
      .init(years: 2010...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Audi": [
    " A4": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " A5 Sportback": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " A7": [
      .init(years: 2010...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Q7": [
      .init(years: 2005...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " RS 3": [
      .init(years: 2011...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " S4": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " SQ5": [
      .init(years: 2013...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " TT": [
      .init(years: 1998...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " e-tron": [
      .init(years: 2019...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "BMW": [
    " 118D f20": [
      .init(years: 2011...2019, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " 2 Series": [
      .init(years: 2014...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " 3 Series": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " 330e": [
      .init(years: 2016...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " 340i": [
      .init(years: 2015...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " 4 Series": [
      .init(years: 2014...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " 4 Series Gran Coupe": [
      .init(years: 2014...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " 5 Series": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " 530i": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " E91": [
      .init(years: 2005...2012, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " X1": [
      .init(years: 2009...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    "X3": [
      .testerNeeded(years: 2018...2020),
      .init(years: 2021...2021, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2022...2025)
    ],
    " X5": [
      .init(years: 1999...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    "i3": [
      .testerNeeded(years: 2014...2017),
      .newTester(years: 2018...2018, username: "bereneb"),
      .init(years: 2019...2019, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .obd, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2020...2021),
    ],
    " i4": [
      .testerNeeded(years: 2022...2025),
    ],
    " iX3": [
      .testerNeeded(years: 2020...2025),
    ],
  ],
  "BYD": [
    " Atto 3": [
      .init(years: 2022...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Chevrolet": [
    " Blazer EV": [
      .init(years: 2024...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Bolt EV": [
      .testerNeeded(years: 2017...2021),
      .init(years: 2022...2022, testingStatus: .activeTester("wrd"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .obd, cells: .obd, fuelLevel: .na, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
      .testerNeeded(years: 2023...2025)
    ],
    "Bolt EUV": [
      .testerNeeded(years: 2017...2022),
      .init(years: 2023...2023, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .obd, cells: .obd, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2024...2025)
    ],
    " Cruze": [
      .init(years: 2008...2019, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Express": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Malibu": [
      .init(years: 1997...2023, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Silverado 1500": [
      .init(years: 1999...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Silverado EV": [
      .init(years: 2024...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Spark": [
      .init(years: 2013...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Trailblazer": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Volt": [
      .init(years: 2011...2019, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Chrysler": [
    " 200": [
      .init(years: 2011...2017, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Pacifica Hybrid": [
      .testerNeeded(years: 2017...2020),
      .newTester(years: 2021...2021, username: "joshuahinckley"),
      .testerNeeded(years: 2023...2025)
    ],
    " Sebring": [
      .init(years: 1996...2010, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Cupra": [
    " Formentor": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Dodge": [
    " Journey": [
      .init(years: 2009...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Fiat": [
    " Grande Punto": [
      .testerNeeded(years: 2005...2007),
      .init(years: 2008...2008, testingStatus: .activeTester("afonsosriv"), stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
      .testerNeeded(years: 2009...2009)
    ],
  ],
  "Ford": [
    "Escape": [
      .testerNeeded(years: 2001...2022),
      .init(years: 2023...2023, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .obd),
      .testerNeeded(years: 2024...2025)
    ],
    " Explorer": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    " F-150": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    " F-150 Lightning": [
      .init(years: 2022...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    " F-350": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    " Fiesta": [
      .init(years: 1996...2019, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Focus": [
      .init(years: 1998...2018, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Fusion": [
      .init(years: 2006...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Fusion Energi": [
      .init(years: 2013...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Kuga": [
      .init(years: 2008...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    " Maverick": [
      .init(years: 2022...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    "Mustang": [
      .testerNeeded(years: 1996...2022),
      .init(years: 2023...2023, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2024...2025)
    ],
    " Mustang Mach-E": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
    ],
    " Ranger": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Transit": [
      .init(years: 2015...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "GMC": [
    " Acadia": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Sierra 1500": [
      .init(years: 1999...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Honda": [
    " Accord": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Civic": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    "CR-V": [
      .testerNeeded(years: 1997...2018),
      .init(years: 2019...2019, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2020...2025)
    ],
    " Odyssey": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Pilot": [
      .init(years: 2003...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Hyundai": [
    " Elantra": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    "IONIQ 5": [
      .testerNeeded(years: 2021...2021),
      .init(years: 2022...2022, testingStatus: .activeTester("spider"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
      .init(years: 2023...2023, testingStatus: .activeTester("spenumatsa"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
      .init(years: 2024...2024, testingStatus: .activeTester("zachmiles"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
      .testerNeeded(years: 2025...2025)
    ],
    "IONIQ 6": [
      .testerNeeded(years: 2023...2023),
      .init(years: 2024...2024, testingStatus: .activeTester("Danmartyn"), stateOfCharge: .obd, stateOfHealth: .obd, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .obd),
      .testerNeeded(years: 2025...2025)
    ],
    " IONIQ PHEV": [
      .testerNeeded(years: 2017...2017),
      .init(years: 2018...2018, testingStatus: .activeTester("zaaaacch"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .obd),
      .testerNeeded(years: 2019...2022)
    ],
    " Kona Electric": [
      .testerNeeded(years: 2018...2022),
      .init(years: 2023...2023, testingStatus: .activeTester("Briantran33"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
      .testerNeeded(years: 2024...2025)
    ],
    " Kona": [
      .init(years: 2018...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Palisade": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Santa Cruz": [
      .init(years: 2022...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    "Santa Fe Hybrid": [
      .init(years: 2021...2021, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .obd, cells: .obd, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .obd),
      .init(years: 2022...2022, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .obd, cells: .obd, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .obd),
      .testerNeeded(years: 2023...2025)
    ],
    " Sonata": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Tucson": [
      .init(years: 2004...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Veloster": [
      .init(years: 2011...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " i30 Sedan": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Jeep": [
    " Grand Cherokee": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Wrangler": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Wrangler 4xe": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Kia": [
    " EV 6": [
      .testerNeeded(years: 2022...2025),
    ],
    "EV 9": [
      .init(years: 2024...2024, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .obd, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .obd),
      .testerNeeded(years: 2025...2025),
    ],
    " K5": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Niro EV": [
      .testerNeeded(years: 2019...2023),
    ],
    " Optima": [
      .testerNeeded(years: 2001...2025),
    ],
    " Rio": [
      .testerNeeded(years: 2001...2023),
    ],
    " Rondo": [
      .init(years: 2007...2017, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Seltos": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Soul": [
      .init(years: 2010...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Sportage": [
      .init(years: 1995...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Stinger": [
      .init(years: 2018...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Telluride": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "KTM": [
    " RC": [
      .init(years: 2014...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Land Rover": [
    " LR4": [
      .init(years: 2010...2016, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Range Rover Sport": [
      .init(years: 2005...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Lexus": [
    " CT 200h": [
      .init(years: 2011...2017, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " GX 460": [
      .testerNeeded(years: 2003...2014),
      .newTester(years: 2015...2015, username: "Thunderbirdhotel"),
      .testerNeeded(years: 2016...2025)
    ],
    " IS 300": [
      .init(years: 2001...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " IS 350": [
      .init(years: 2006...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " RX 450h": [
      .init(years: 2010...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Lincoln": [
    " Corsair": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Mazda": [
    " 2": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " 3": [
      .init(years: 2004...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " 6": [
      .init(years: 2003...2021, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " CX-30": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " CX-5": [
      .init(years: 2013...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " CX-50": [
      .init(years: 2023...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " CX-9": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Mercedes": [
    " C-Class": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "MG": [
    " Comet": [
      .init(years: 2023...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .unk, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .unk, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    "MG4": [
      .init(years: 2022...2022, testingStatus: .onboarded, stateOfCharge: .all, stateOfHealth: .obd, charging: .ota, cells: .obd, fuelLevel: .na, speed: .obd, range: .all, odometer: .all, tirePressure: .ota),
      .testerNeeded(years: 2023...2025)
    ],
  ],
  "Mitsubishi": [
    " Eclipse Cross": [
      .init(years: 2018...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Outlander": [
      .init(years: 2003...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Outlander PHEV": [
      .init(years: 2018...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " RVR": [
      .init(years: 2011...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Nissan": [
    " ARIYA": [
      .init(years: 2023...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Kicks": [
      .init(years: 2018...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    "Juke": [
      .testerNeeded(years: 1996...2011),
      .init(years: 2012...2012, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .obd, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2013...2025)
    ],
    "Leaf": [
      .testerNeeded(years: 2010...2017),
      .init(years: 2018...2018, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .obd, charging: .obd, cells: .unk, fuelLevel: .na, speed: .obd, range: .obd, odometer: .obd, tirePressure: .obd),
      .init(years: 2019...2019, testingStatus: .onboarded, stateOfCharge: .obd, stateOfHealth: .obd, charging: .obd, cells: .unk, fuelLevel: .na, speed: .obd, range: .obd, odometer: .obd, tirePressure: .obd),
      .testerNeeded(years: 2020...2025)
    ],
    " Murano": [
      .init(years: 2003...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Qashqai": [
      .init(years: 2006...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Rogue Sport": [
      .init(years: 2017...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Peugeot": [
    " 308 Hybrid": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Polestar": [
    "Polestar 2":     [
      .testerNeeded(years: 2019...2020),
      .newTester(years: 2021...2021, username: "jpalensk"),
      .newTester(years: 2022...2022, username: "alexr"),
      .testerNeeded(years: 2023...2023),
      .init(years: 2024...2024, testingStatus: .activeTester("jbritton"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .unk),
      .testerNeeded(years: 2025...2025),
    ],
    " Polestar 3":     [
      .newTester(years: 2024...2024, username: "david.rothera"),
      .testerNeeded(years: 2025...2025),
    ],
  ],
  "Porsche": [
    " 911":     [ .testerNeeded(years: 1996...2025) ],
    "Cayenne":  [
      .testerNeeded(years: 2002...2014),
      .newTester(years: 2015...2015, username: "b2pointoh"),
      .testerNeeded(years: 2016...2023),
      .init(years: 2024...2024, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2025...2025)
    ],
    "Macan":    [
      .testerNeeded(years: 2014...2023),
      .init(years: 2024...2024, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2025...2025),
    ],
    "Taycan": [
      .init(years: 2019...2024, testingStatus: .onboarded, stateOfCharge: .all, stateOfHealth: .obd, charging: .ota, cells: .obd, fuelLevel: .na, speed: .obd, range: .all, odometer: .all, tirePressure: .all),
      .testerNeeded(years: 2025...2025)
    ],
  ],
  "Ram": [
    " 1500": [
      .init(years: 2011...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
  ],
  "Renault": [
    " Kadjar": [
      .init(years: 2015...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " SCENIC E-TECH ELECTRIC": [
      .init(years: 2024...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Zoe": [
      .init(years: 2012...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Rivian": [
    " R1S": [
      .testerNeeded(years: 2022...2024),
      .init(years: 2025...2025, testingStatus: .activeTester("Alex"), stateOfCharge: .unk, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .unk, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Seat": [
    " Ibiza": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    "Leon": [
      .testerNeeded(years: 1999...2016),
      .init(years: 2017...2017, testingStatus: .onboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2018...2025),
    ],
  ],
  "Škoda": [
    " Octavia": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Subaru": [
    " Crosstrek": [
      .init(years: 2013...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Forester": [
      .init(years: 1997...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Impreza": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Outback": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Solterra": [
      .init(years: 2023...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " WRX": [
      .init(years: 2002...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Tesla": [
    " Model S": [
      .testerNeeded(years: 2012...2015),
      .init(years: 2016...2016, testingStatus: .activeTester("shaver"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .testerNeeded(years: 2017...2025),
    ],
    "Model 3": [
      .init(years: 2017...2023, testingStatus: .partiallyOnboarded, stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2019...2019, testingStatus: .activeTester("justinscheetz"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2020...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2021...2021, testingStatus: .activeTester("Atreideez"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2022...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2023...2023, testingStatus: .activeTester("leoprose"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2024...2024, testingStatus: .activeTester("Olitoady"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2025...2025, testingStatus: .partiallyOnboarded, stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
    ],
    " Model X": [
      .testerNeeded(years: 2016...2025),
    ],
    "Model Y": [
      .init(years: 2020...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2023...2023, testingStatus: .activeTester("sylvainramousse"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2024...2024, testingStatus: .activeTester("amitchell516"), stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .init(years: 2025...2025, testingStatus: .partiallyOnboarded, stateOfCharge: .ota, stateOfHealth: .unk, charging: .ota, cells: .unk, fuelLevel: .na, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
    ],
    " Semi": [
      .testerNeeded(years: 2022...2025),
    ],
  ],
  "Toyota": [
    "4Runner": [
      .testerNeeded(years: 1996...2019),
      .init(years: 2020...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .ota, speed: .unk, range: .ota, odometer: .ota, tirePressure: .ota),
      .testerNeeded(years: 2021...2025)
    ],
    " Avalon": [
      .init(years: 1996...2022, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Camry": [
      .testerNeeded(years: 1996...2002),
      .newTester(years: 2003...2003, username: "lambhofreak"),
      .testerNeeded(years: 2004...2013),
      .newTester(years: 2014...2014, username: "eliasmalek24"),
      .testerNeeded(years: 2015...2025)
    ],
    " Corolla": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Corolla Hybrid": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Highlander": [
      .init(years: 2001...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Land Cruiser": [
      .init(years: 1996...2021, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Prius Prime": [
      .init(years: 2017...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Prius v": [
      .init(years: 2012...2017, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " RAV4": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " RAV4 Hybrid": [
      .testerNeeded(years: 2016...2019),
      .newTester(years: 2020...2020, username: "ktaletsk"),
      .testerNeeded(years: 2021...2024)
    ],
    " Sequoia": [
      .testerNeeded(years: 2001...2002),
      .newTester(years: 2003...2003, username: "tgerring"),
      .testerNeeded(years: 2004...2025)
    ],
    " Sienna": [
      .init(years: 1998...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    "Tacoma": [
      .testerNeeded(years: 1996...2022),
      .init(years: 2023...2023, testingStatus: .activeTester("jasonmc99"), stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2024...2025)
    ],
    " Tundra": [
      .testerNeeded(years: 2000...2019),
      .newTester(years: 2020...2020, username: "danomeyer"),
      .testerNeeded(years: 2021...2025)
    ],
    " Venza": [
      .init(years: 2009...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Yaris": [
      .init(years: 1999...2020, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Yaris Cross": [
      .testerNeeded(years: 2020...2020),
      .newTester(years: 2021...2021, username: "molgar"),
      .testerNeeded(years: 2022...2025)
    ],
    "bZ4X": [
      .testerNeeded(years: 2023...2023),
      .init(years: 2024...2024, testingStatus: .activeTester("Jefbos90"), stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2025...2025)
    ],
  ],
  "Vauxhall": [
    " Ampera": [
      .init(years: 2011...2015, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Corsa": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Volkswagen": [
    "e-Golf": [
      .testerNeeded(years: 2015...2018),
      .init(years: 2019...2019, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .obd, odometer: .obd, tirePressure: .unk),
      .testerNeeded(years: 2020...2025)
    ],
    " Golf": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Golf R": [
      .init(years: 2012...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " ID.3": [
      .init(years: 2020...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " ID.4": [
      .init(years: 2021...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " ID7 Tourer": [
      .init(years: 2024...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Jetta": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Passat": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Polo": [
      .init(years: 1996...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Scirocco": [
      .init(years: 2008...2017, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Tiguan": [
      .init(years: 2007...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " Touran": [
      .init(years: 2003...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " Up": [
      .init(years: 2011...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
  "Volvo": [
    " S90": [
      .init(years: 2016...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " V60": [
      .init(years: 2011...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .obd, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .obd, tirePressure: .unk),
    ],
    " V70": [
      .init(years: 1996...2016, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .unk, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
    " XC40 Recharge": [
      .testerNeeded(years: 2018...2020),
      .newTester(years: 2021...2021, username: "zandr"),
      .testerNeeded(years: 2022...2025)
    ],
    " XC60 PHEV": [
      .testerNeeded(years: 2018...2019),
      .init(years: 2020...2020, testingStatus: .activeTester("shaver"), stateOfCharge: .unk, stateOfHealth: .unk, charging: .unk, cells: .unk, fuelLevel: .na, speed: .unk, range: .unk, odometer: .unk, tirePressure: .unk),
      .testerNeeded(years: 2021...2025)
    ],
    " XC90": [
      .init(years: 2003...2024, testingStatus: .partiallyOnboarded, stateOfCharge: .na, stateOfHealth: .na, charging: .na, cells: .na, fuelLevel: .obd, speed: .obd, range: .unk, odometer: .unk, tirePressure: .unk),
    ],
  ],
]
