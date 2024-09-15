import Slipstream

struct SubfeatureRow<Content: View>: View {
  @ViewBuilder
  let content: () -> Content

  var body: some View {
    HStack(spacing: 32) {
      content()
    }
  }
}
