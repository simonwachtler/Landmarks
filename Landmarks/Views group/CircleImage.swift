//
//  CircleImage.swift
//  Landmarks
//
//  Created by Gernot Wachtler on 12/01/21.
//

import SwiftUI
import Foundation

struct CircleImage: View {
    var landmark: Landmark

    
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(landmark: landmarks[0])
    }
}
