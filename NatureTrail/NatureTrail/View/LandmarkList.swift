//
//  LandmarkList.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-15.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavorite = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavorite || landmark.isFavorite )
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavorite) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Show Details")
        }
    }
}

#Preview {
    LandmarkList()
}
