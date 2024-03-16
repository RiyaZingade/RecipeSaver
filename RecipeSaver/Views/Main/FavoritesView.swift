//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/22/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't favorited any recipes yet.")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavoritesView()
}
