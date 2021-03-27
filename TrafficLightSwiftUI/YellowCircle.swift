//
//  YellowCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct YellowCircle: View {
    var body: some View {
        Circle()
            .foregroundColor(.yellow)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color .white, lineWidth: 5))
            .opacity(0.3)
    }
}

struct YellowCircle_Previews: PreviewProvider {
    static var previews: some View {
        YellowCircle()
    }
}
