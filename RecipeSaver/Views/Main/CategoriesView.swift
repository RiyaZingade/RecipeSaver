//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/22/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Categories")
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
