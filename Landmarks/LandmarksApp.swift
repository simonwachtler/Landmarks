//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Gernot Wachtler on 12/01/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
