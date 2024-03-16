//
//  NewRecipesView.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/22/24.
//

import SwiftUI

struct NewRecipesView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    NewRecipesView()
}
