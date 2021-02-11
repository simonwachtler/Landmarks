//
//  ContentView.swift
//  Landmarks
//
//  Created by Gernot Wachtler on 12/01/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {

        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
                .environmentObject(ModelData())
        }
    }
