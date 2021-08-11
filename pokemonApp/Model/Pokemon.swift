//
//  Pokemon.swift
//  pokemonApp
//
//  Created by tafadzwa mushamba on 10/08/2021.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}


let demo_pokemon: [Pokemon] = [
    .init(id: 0, name: "Bulbsaur", imageUrl: "one", type: "poison"),
    .init(id: 1, name: "picca", imageUrl: "one", type: "electric"),
    .init(id: 2, name: "litsaur", imageUrl: "one", type: "fire"),
    .init(id: 3, name: "charmnander", imageUrl: "one", type: "water"),
    .init(id: 4, name: "waterer", imageUrl: "one", type: "poison"),
    .init(id: 5, name: "joker", imageUrl: "one", type: "fire"),
]
