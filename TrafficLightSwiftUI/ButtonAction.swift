//
//  ButtonAction.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct ButtonAction: View {
    
    @State private var buttonTitle = "START"
    
    var body: some View {
        Button(action: {
            self.buttonTitle = "NEXT"
        }) {
            Text(buttonTitle)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
    }
}

struct ButtonAction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAction()
    }
}

