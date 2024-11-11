import Foundation

import Slipstream

struct Help: View {
  var body: some View {
    Page(
      "Sidecar help",
      path: "/help/",
      description: "Stuck? Get guidance in the Sidecar help guide.",
      keywords: [
        "OBD-II",
        "beta testing",
        "car scanner",
        "trip logger",
        "vehicle diagnostics",
        "vehicle connectivity",
      ]
    ) {
      ContentContainer {
        ContentContainer {
          VStack(alignment: .center) {
            HeroIconPuck(url: URL(string: "/gfx/help.png")!)

            Div {
              H1("Help resources")
                .fontSize(.fourXLarge)
                .bold()
                .fontDesign("rounded")
              Text("Stuck? Find the guidance you need here")
                .fontSize(.large)
            }
            .textAlignment(.center)
          }
          .padding(.vertical, 16)
        }
        .margin(.bottom, 16)
      }

      PostView("""
I don't see my scanner in Sidecar
---------------------------------

This could be happening for two reasons.

The most common reason is that you have another OBD scanner app running on your phone that is connected to your scanner. iOS only allows one app to be connected to a scanner at a time, so if another app is connected other than Sidecar, Sidecar won't see your scanner at all.

The fix in this case is to first make sure that no other app is connected to your scanner, either by manually disconnecting from those apps or force closing them. You can then try refreshing the list of scanners in Sidecar.

Another reason your scanner might not be appearing is if it's using non-standard communication protocols. If you've tried the above and are otherwise able to connect to your scanner with other apps, then it's likely that Sidecar doesn't support your scanner yet. In this case, send an email with your scanner and a link to where you bought it from to support@clutch.engineering.

How to export OBD scan logs
---------------------------

Sidecar logs all OBD commands sent to and received from your vehicle when scanning is active. This
log is stored privately on your phone.

To export the logs from your phone, follow these steps from within the Sidecar app:

1. Tap the Settings tab.
2. Scroll down and tap the "Storage" button.
3. Tap "Scanning sessions".
4. A share sheet will appear. You can now airdrop the file, send it via email, or perform any other share action with the data.

Note: your OBD scan logs will typically contain your vehicle identification number (VIN).

![100%](/gfx/help/export-scan-sessions.png)

How to export vehicle data
--------------------------

Connected Account (Beta) vehicle data can be exported from Sidecar, which can be a helpful way to fix bugs and identify new data that can be incorporated into the Sidecar user interface.

To export your vehicle data, follow these steps from within the Sidecar app:

1. Tap your vehicle tab. If you have more than one vehicle, tap the Garage tab and then tap your vehicle.
2. Scroll down to and tap the "Export this vehicle's data" button.
3. Keep "Redact identifying data" enabled if you're sharing this data with someone else.
4. Tap "Export cached data" to export the most recent data that Sidecar has available. If you want to ensure all data is as fresh as possible, tap "Export fresh data" instead.
5. Tap the data export.
6. Tap "Share all documents", or share individual documents.
7. A share sheet will appear. You can now airdrop the file, send it via email, or perform any other share action with the data.

![100%](/gfx/help/export-vehicle-data.png)

How to refresh your vehicle parameters
--------------------------------------

Sidecar hosts its OBD parameters at [github.com/electricsidecar](https://github.com/electricsidecar/) under a Creative Commons license. Sidecar automatically checks for any changes to these parameters once a day, but if you need to refresh your parameters sooner (e.g. if you know some changes have been recently made), you can force a refresh by following these steps from within the Sidecar app:

1. Tap your vehicle tab. If you have more than one vehicle, tap the Garage tab and then tap your vehicle.
2. Scroll down to and tap the "Vehicle parameters" button.
3. Tap the three dot menu button.
4. Tap "Fetch latest parameters".
5. If there are new parameters then the `SHA` value should update.
6. Confirm the value by tapping the three dot menu button again.

![100%](/gfx/help/refresh-vehicle-parameters.png)
""")
      .padding(.bottom, 16)
    }
  }
}