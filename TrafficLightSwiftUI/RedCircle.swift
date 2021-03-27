//
//  RedCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct RedCircle: View {
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color .white, lineWidth: 5))
            .opacity(0.3)
    }
}

struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        RedCircle()
    }
}
