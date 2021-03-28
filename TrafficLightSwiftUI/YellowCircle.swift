//
//  YellowCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct YellowCircle: View {
    var color: UIColor
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(.yellow)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(Color .white, lineWidth: 5))
    }
}

struct YellowCircle_Previews: PreviewProvider {
    static var previews: some View {
        YellowCircle(color: .yellow, opacity: 0.3)
    }
}
