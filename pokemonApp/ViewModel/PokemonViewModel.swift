//
//  PokemonViewModel.swift
//  pokemonApp
//
//  Created by tafadzwa mushamba on 10/08/2021.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon(){
       guard let url = URL(string: baseURL) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {return}
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
}
