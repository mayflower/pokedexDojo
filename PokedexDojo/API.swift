// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class PokemonsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query pokemons($first: Int!) {
      pokemons(first: $first) {
        __typename
        id
        name
        number
        image
      }
    }
    """

  public let operationName: String = "pokemons"

  public let operationIdentifier: String? = "21e37dde51d39f2442ca0548918512d5b209bc9a3ccbd3a19ff80569558251b5"

  public var first: Int

  public init(first: Int) {
    self.first = first
  }

  public var variables: GraphQLMap? {
    return ["first": first]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("pokemons", arguments: ["first": GraphQLVariable("first")], type: .list(.object(Pokemon.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pokemons: [Pokemon?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "pokemons": pokemons.flatMap { (value: [Pokemon?]) -> [ResultMap?] in value.map { (value: Pokemon?) -> ResultMap? in value.flatMap { (value: Pokemon) -> ResultMap in value.resultMap } } }])
    }

    public var pokemons: [Pokemon?]? {
      get {
        return (resultMap["pokemons"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Pokemon?] in value.map { (value: ResultMap?) -> Pokemon? in value.flatMap { (value: ResultMap) -> Pokemon in Pokemon(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Pokemon?]) -> [ResultMap?] in value.map { (value: Pokemon?) -> ResultMap? in value.flatMap { (value: Pokemon) -> ResultMap in value.resultMap } } }, forKey: "pokemons")
      }
    }

    public struct Pokemon: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Pokemon"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("number", type: .scalar(String.self)),
          GraphQLField("image", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, number: String? = nil, image: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Pokemon", "id": id, "name": name, "number": number, "image": image])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The ID of an object
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of this Pokémon
      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The identifier of this Pokémon
      public var number: String? {
        get {
          return resultMap["number"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "number")
        }
      }

      public var image: String? {
        get {
          return resultMap["image"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "image")
        }
      }
    }
  }
}
