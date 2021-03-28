//
//  ButtonAction.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct ButtonAction: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .cornerRadius(25)
        .overlay(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ButtonAction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAction(title: "START", action: {})
    }
}

