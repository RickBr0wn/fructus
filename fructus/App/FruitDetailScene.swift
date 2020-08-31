//
//  FruitDetailScene.swift
//  fructus
//
//  Created by Rick Brown on 31/08/2020.
//

import SwiftUI

struct FruitDetailScene: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
          // HEADER
          FruitHeaderView(fruit: fruit)
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            // HEADLINE
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            // NUTRIENTS
            FruitNutrientsView(fruit: fruit)
            // SUBHEADLINE
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
              .foregroundColor(fruit.gradientColors[1])
            // DESCRIPTION
            Text(fruit.description)
              .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            // LINK
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: 2nd VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        } //: 1st VSTACK
        .navigationBarTitle(fruit.title, displayMode: .inline)
        .navigationBarHidden(true)
      } //: SCROLL
      .edgesIgnoringSafeArea(.top)
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW
struct FruitDetailScene_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailScene(fruit: fruitsData[0])
      .previewDevice("iPhone 11")
  }
}
