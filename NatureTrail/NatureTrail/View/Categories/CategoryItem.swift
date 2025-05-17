//
//  CategoryItem.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-17.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack (alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(8)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    
    CategoryItem(landmark: ModelData().landmarks[0])
}
