//
//  ContentView.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                MapView()
                    .frame(height: 300)
                    .padding(.bottom,200)
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    
                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    Divider()
                    Text("About Turtle Rock")
                            .font(.title2)
                    Text("Descriptive text goes here...")
                }
                .padding()
                .offset(y: -80)
                Spacer()
            }
            CircleImage()
                .offset(y: -80)
        }
    }
}

#Preview {
    ContentView()
}
