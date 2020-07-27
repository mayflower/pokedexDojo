//
//  ContentView.swift
//  PokedexDojo
//
//  Created by Max Tharr on 24.07.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import SwiftUI
import URLImage
import Combine

struct ContentView: View {
    @ObservedObject var pokeFetcher = PokeFetcher()
    
    var body: some View {
            List {
                ForEach(pokeFetcher.pokemons, id: \.number) { pokemon in
                    PokeCard(pokemon: pokemon)
                }
            }
            .frame(maxWidth: .infinity)
    }
}

class PokeFetcher: ObservableObject {
    @Published var pokemons: [Pokemon] = []
    var subscription: AnyCancellable?
    
    init() {
        subscription = PokemonsQuery(first: 200)
        .fetchPokemons()
        .replaceError(with: [])
            .assign(to: \.pokemons, on: self)
    }
}

let pokemon = Pokemon(id: "1", name: "Pikachu2", number: "025", image: "https://img.pokemondb.net/artwork/raichu.jpg")


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}

