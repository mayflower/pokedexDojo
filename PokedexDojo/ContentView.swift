//
//  ContentView.swift
//  PokedexDojo
//
//  Created by Max Tharr on 24.07.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pokemon = Pokemon(name: "Pikachu2", number: "025", imagePath: "Pikachu")
    
    var body: some View {
        ScrollView {
            VStack {
                PokeCard(pokemon: pokemon)
                PokeCard(pokemon: pokemon)
                PokeCard(pokemon: pokemon)
            }
        }
    }
}

struct Pokemon {
    let name: String
    let number: String
    let imagePath: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            pokemon: Pokemon(name: "Pikachu", number: "025", imagePath: "Pikachu")
        )
    }
}

struct PokeCard: View {
    let pokemon: Pokemon
    var body: some View {
        VStack {
            Text(pokemon.name)
                .font(.title)
                .fontWeight(.bold)
            Text(pokemon.number)
                .font(.caption)
            Image(pokemon.imagePath)
                .resizable().aspectRatio(contentMode:.fit)
                .frame(width: 150.0, height: 150)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}
