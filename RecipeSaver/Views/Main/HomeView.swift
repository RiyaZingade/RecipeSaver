//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/22/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all) { recipe in //kinda like a for each loop
                Text(recipe.name)
                    .navigationTitle("My Recipes")
            }
        }
        .navigationViewStyle(.stack)
        
    }
}

#Preview {
    HomeView()
}
