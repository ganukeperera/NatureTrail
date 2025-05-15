//
//  LandmarkList.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
