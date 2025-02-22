//

import SwiftUI

public struct ArmariaTextField: View {
  var title: LocalizedStringKey
  var placeholder: LocalizedStringKey
  @Binding var text: String

  public init(title: LocalizedStringKey, placeholder: LocalizedStringKey = "", text: Binding<String>) {
    self.title = title
    self.placeholder = placeholder
    self._text = text
  }

  public var body: some View {
    VStack {
      Text(title)
        .font(.h2(weight: .bold))
        .foregroundColor(.textDarkGrey)
        .frame(maxWidth: .infinity, alignment: .leading)

      TextField(placeholder, text: $text)
      .padding()
      .background(
        RoundedRectangle(cornerRadius: 8, style: .continuous)
          .strokeBorder(Color.green300)
      )
    }
  }
}

struct ArmariaTextField_Previews: PreviewProvider {
  static var previews: some View {
    ArmariaTextField(title: "Textfield Title", placeholder: "Placeholder", text: .constant(""))
      .padding()
  }
}
