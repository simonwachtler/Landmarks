//
//  Profile.swift
//  Landmarks
//
//  Created by Simon Wachtler on 16/02/21.
//

import Foundation


struct Profile {
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
            case spring = "🌷"
                case summer = "🌞"
                case autumn = "🍂"
                case winter = "☃️"
        
        
        var id: String { self.rawValue }
    }
}
