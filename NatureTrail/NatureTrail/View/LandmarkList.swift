//
//  LandmarkList.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Show Details")
        }
    }
}

#Preview {
    LandmarkList()
}
