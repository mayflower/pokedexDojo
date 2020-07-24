//
//  ContentView.swift
//  PokedexDojo
//
//  Created by Max Tharr on 24.07.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Pikachu")
                .font(.title)
                .fontWeight(.bold)
            Text("025")
                .font(.caption)
            Image("Pikachu")
                .resizable().aspectRatio(contentMode:.fit)
                .frame(width: 150.0, height: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
