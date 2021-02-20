//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Simon Wachtler on 20/02/21.
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
