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
            }
        }
    }
}

#Preview("Turtle Rock") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

