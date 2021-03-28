//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func colorAction() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            greenLight = lightIsOn
            yellowLight = lightIsOff
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.gray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                RedCircle(color: .red, opacity: redLight)
                YellowCircle(color: .yellow, opacity: yellowLight)
                GreenCircle(color: .green, opacity: greenLight)
                
                Spacer()
                
                ButtonAction(title: buttonTitle) {
                    buttonTitle = "NEXT"
                    colorAction()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
