//
//  StartButtonView.swift
//  fructus
//
//  Created by Rick Brown on 31/08/2020.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: - PROPERTIES
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  
  // MARK: - BODY
  var body: some View {
    Button(action: {
      isOnboarding = false
      print("Exit the onboarding")
    }) {
      HStack(spacing: 8) {
        Text("Start")
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    } //: BUTTON
    .accentColor(Color.white)
  }
}

// MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
      
    }
  }
}
