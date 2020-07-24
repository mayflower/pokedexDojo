//
//  PokeCard.swift
//  PokedexDojo
//
//  Created by Max Tharr on 24.07.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import Foundation
import SwiftUI
import URLImage

struct PokeCard: View {
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.name)
                .font(.title)
                .fontWeight(.bold)
            Text(pokemon.number)
                .font(.caption)
            URLImage(URL(string: pokemon.imagePath)!) {
                proxy in
                proxy.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 150.0, height: 150)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}
