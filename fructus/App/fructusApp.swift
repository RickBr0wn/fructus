//
//  fructusApp.swift
//  fructus
//
//  Created by Rick Brown on 31/08/2020.
//

import SwiftUI

@main
struct fructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
      
    }
  }
}
