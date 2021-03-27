//
//  ButtonShape.swift
//  TrafficLightSwiftUI
//
//  Created by Igor Denisiuk on 27.03.21.
//

import SwiftUI

struct ButtonShape: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 70)
            .foregroundColor(.blue)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color .white, lineWidth: 5))
    }
}

struct ButtonShape_Previews: PreviewProvider {
    static var previews: some View {
        ButtonShape()
    }
}
