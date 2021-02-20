//
//  LandmarksApp.swift
//  WatchLandmarks Extension
//
//  Created by Simon Wachtler on 20/02/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
