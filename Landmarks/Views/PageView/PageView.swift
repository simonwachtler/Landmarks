//
//  PageView.swift
//  Landmarks
//
//  Created by Simon Wachtler on 18/02/21.
//

import SwiftUI
import UIKit

struct PageView<Page: View>: View {
    @State private var currentPage = 0
    var pages: [Page]
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
        

        }
        
    }

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
