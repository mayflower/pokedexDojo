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
            Text(pokemon.name ?? "Unknown")
                .font(.title)
                .fontWeight(.bold)
            Text(pokemon.number ?? "Unknown Number")
                .font(.caption)
            URLImage(pokemon.imageURL) {
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

struct PokeCard_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
