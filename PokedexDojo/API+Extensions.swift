//
//  API+Extensions.swift
//  PokedexDojo
//
//  Created by Max Tharr on 24.07.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import Foundation
import Apollo
import Combine

extension PokemonsQuery.Data.Pokemon: Identifiable {}

typealias Pokemon = PokemonsQuery.Data.Pokemon

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql-pokemon.now.sh/")!)
}

extension Pokemon {
    var imageURL: URL {
        URL(string: image!)!
    }
}

extension PokemonsQuery {
    func fetchPokemons() -> Future<[Pokemon], Error> {
        Future<[Pokemon], Error> { promise in
            Network.shared.apollo.fetch(query: self) { result in
                switch result {
                    case .success(let graphQLResult):
                        if let data = graphQLResult.data,
                            let pokemons = data.pokemons {
                            promise(.success(pokemons.compactMap { $0 }))
                        } else {
                            promise(.failure(APIError.propertyNotThere))
                    }
                    case .failure(let error):
                        promise(.failure(error))
                }
            }
        }
    }
    
    private enum APIError: Error {
        case propertyNotThere
    }
}
