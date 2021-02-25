//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Simon Wachtler on 06/02/21.
//

import SwiftUI


struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
            ForEach(filteredLandmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
                }
            }
            }
            .navigationTitle("Landmarks")
            .frame(minWidth: 300)
        }
    }
}
struct LandmarkList_Preview: PreviewProvider {
        static var previews: some View {
            LandmarkList()
                .environmentObject(ModelData())

}
}

