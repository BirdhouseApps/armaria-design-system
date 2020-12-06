//

import SwiftUI

public struct ArmariaButton: View {
  let titleKey: LocalizedStringKey
  let action: () -> Void

  public init(_ titleKey: LocalizedStringKey, action: @escaping () -> Void) {
    self.titleKey = titleKey
    self.action = action
  }

  public var body: some View {
    Button(action: action, label: { Text(titleKey).font(.h2(weight: .bold)) })
      .buttonStyle(ArmariaButtonStyle())
  }
}

private struct ArmariaButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      Spacer()
      configuration.label
        .foregroundColor(.textWhite)
      Spacer()
    }
    .padding()
    .background(
      RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color.tan600)
    )
    .opacity(configuration.isPressed ? 0.5 : 1)
  }
}

struct ArmariaButton_Previews: PreviewProvider {
  static var previews: some View {
    ArmariaButton("Title", action: {})
      .padding()
      .previewLayout(.sizeThatFits)
      .previewCases()
  }
}
