//
//  ContentView.swift
//  swstate
//
//  Created by user203110 on 9/11/21.
//

import SwiftUI

struct ContentView: View {
    @State
    var pokemonName = "---"
    var body: some View {
        VStack {
        Text("Random Pokemon Generator")
        Text(pokemonName)
            .frame(
                width: UIScreen.main.bounds.width,
                height: 50
                )
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            
        Button(
            action: { print("Gotta catch 'em all")
                self.switchPokemon() },
            label: { Text("Run") }
        )
        }
        
    }
    func switchPokemon() {
        let list = ["Squirtle", "Bulbasaur", "Charmander", "Pikachu"]
        pokemonName = list.randomElement() ?? ""
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
