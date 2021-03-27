//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack {
                RedCircle()
                YellowCircle()
                GreenCircle()
                Spacer()
                ZStack {
                    ButtonShape()
                    ButtonAction()
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
