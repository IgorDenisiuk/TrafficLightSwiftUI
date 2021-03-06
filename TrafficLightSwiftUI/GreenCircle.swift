//
//  GreenCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct GreenCircle: View {
    var color: UIColor
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(.green)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(Color .white, lineWidth: 5))
    }
}

struct GreenCircle_Previews: PreviewProvider {
    static var previews: some View {
        GreenCircle(color: .green, opacity: 0.3)
    }
}
