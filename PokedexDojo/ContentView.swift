//
//  ContentView.swift
//  PokedexDojo
//
//  Created by Max Tharr on 24.07.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import SwiftUI
import URLImage

struct ContentView: View {
    
    @State var pokemons = [
        pokemon,
        pokemon,
        pokemon,
        pokemon,
        pokemon,
        pokemon,
        pokemon,
        pokemon,
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(pokemons, id: \.number) { pokemon in
                    PokeCard(pokemon: pokemon)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

let pokemon = Pokemon(name: "Pikachu2", number: "025", imagePath: "https://img.pokemondb.net/artwork/raichu.jpg")

struct Pokemon {
    let name: String
    let number: String
    let imagePath: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

