//

import SwiftUI

public extension Color {
  static let textDarkGrey = Color("textDarkGrey", bundle: .module)
  static let textGrey = Color("textGrey", bundle: .module)
  static let textWhite = Color("textWhite", bundle: .module)
}

struct TextColors_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      List {
        ColorsPreviewSection(title: "Grey", colors: [.textDarkGrey, .textGrey])
        ColorsPreviewSection(title: "White", colors: [.textWhite])
      }
      .listStyle(GroupedListStyle())
      .navigationBarTitle("Colors")
    }
  }
}
