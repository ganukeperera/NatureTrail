//
//  LandmarkRow.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-15.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                landmark.image
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(5)
                Text(landmark.name)
                Spacer()
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                }
            }
        }
    }
}

#Preview("Turtle Rock") {
    let modelData = ModelData()
    Group {
        LandmarkRow(landmark: modelData.landmarks[0])
        LandmarkRow(landmark: modelData.landmarks[1])
    }
}

