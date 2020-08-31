//
//  ContentView.swift
//  fructus
//
//  Created by Rick Brown on 31/08/2020.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  var fruits: [Fruit] = fruitsData
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in
          NavigationLink(destination: FruitDetailScene(fruit: item)){
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits")
    }
  }
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(fruits: fruitsData)
        .previewDevice("iPhone 11 Pro")
    }
  }
}
