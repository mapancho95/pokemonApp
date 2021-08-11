//
//  pokemonListView.swift
//  pokemonApp
//
//  Created by tafadzwa mushamba on 10/08/2021.
//

import SwiftUI

struct pokemonListView: View {
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 20){
                    ForEach(0..<151){ _ in
                        pokeCell(pokemon: demo_pokemon[1])
                    }
                    
                }
            }
            .navigationTitle("Pokemon")
        }
    }
}

struct pokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        pokemonListView()
    }
}
