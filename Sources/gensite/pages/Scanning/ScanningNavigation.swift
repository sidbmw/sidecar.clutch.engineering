import Foundation

import Slipstream

struct ScanningNavigation: View {
  var body: some View {
    ContentContainer {
      HStack(spacing: 16) {
        NavigationLink(URL(string: "/scanning/extended-pids"), text: "Extended PIDs")
        NavigationLink(URL(string: "/scanning/vehicle-support"), text: "Vehicle support")
      }
      .justifyContent(.end)
      .padding(.vertical, 8)
    }
  }
}