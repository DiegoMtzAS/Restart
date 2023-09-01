//
//  ContentView.swift
//  Restart
//
//  Created by Diego Martinez on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            if isOnboardingViewActive{
                OnboardingView()
            }else{
                HomeView()
            }
        }//: ZSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
