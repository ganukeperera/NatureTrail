//
//  CategoryRow.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-17.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3)))
}
