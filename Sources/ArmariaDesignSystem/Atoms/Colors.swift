//

import SwiftUI

public extension Color {

  // MARK: Primary

  static let peach400 = Color("peach400", bundle: .module)

  // MARK: Accents

  static let green300 = Color("green300", bundle: .module)
  static let purple700 = Color("purple700", bundle: .module)

  // MARK: Background

  static let tan200 = Color("tan200", bundle: .module)
  static let tan600 = Color("tan600", bundle: .module)

  // MARK: Greys

  static let grey200 = Color("grey200", bundle: .module)
  static let grey500 = Color("grey500", bundle: .module)
  static let grey800 = Color("grey800", bundle: .module)
}

struct Colors_Previews: PreviewProvider {
  static let primaryColors: [Color] = [.peach400]
  static let accentsColors: [Color] = [.green300, .purple700]
  static let backgroundColors: [Color] = [.tan200, .tan600]
  static let greyColors: [Color] = [.grey200, .grey500, .grey800]

  static var previews: some View {
    NavigationView {
      List {
        ColorsPreviewSection(title: "Primary", colors: self.primaryColors)
        ColorsPreviewSection(title: "Accents", colors: self.accentsColors)
        ColorsPreviewSection(title: "Backgrounds", colors: self.backgroundColors)
        ColorsPreviewSection(title: "Greys", colors: self.greyColors)
      }
      .listStyle(GroupedListStyle())
      .navigationBarTitle("Colors")
    }
  }
}
