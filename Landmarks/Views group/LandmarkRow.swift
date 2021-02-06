//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Gernot Wachtler on 13/01/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        Text("Hello World!")
    }
}
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
