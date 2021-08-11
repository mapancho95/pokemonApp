//
//  pokeCell.swift
//  pokemonApp
//
//  Created by tafadzwa mushamba on 10/08/2021.
//

import SwiftUI

struct pokeCell: View {
    let pokemon: Pokemon
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25)
                            )
                        ).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                    
                    Image("one").resizable().scaledToFit().frame(width: 68, height: 68)
                        .padding(.bottom, 4)
                        .padding(.trailing, 4)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6, x: 0.0, y: 0.0)
        
    }
}

struct pokeCell_Previews: PreviewProvider {
    static var previews: some View {
        pokeCell(pokemon: demo_pokemon[3] )
    }
}
