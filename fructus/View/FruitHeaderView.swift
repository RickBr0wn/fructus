//
//  FruitHeaderView.swift
//  fructus
//
//  Created by Rick Brown on 31/08/2020.
//

import SwiftUI

struct FruitHeaderView: View {
  // properties
  var fruit: Fruit
  @State private var isAnimatingImage: Bool = false
  // body
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
      
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        .padding(.vertical, 20)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
    } // zstack
    .frame(height: 440)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimatingImage = true
      }
    }
  }
}

// preview
struct FruitHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    FruitHeaderView(fruit: fruitsData[0])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}
