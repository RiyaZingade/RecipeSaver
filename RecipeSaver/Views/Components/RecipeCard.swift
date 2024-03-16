//
//  RecipeCard.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/24/24.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
        
        }
        // .frame(width: 160, height: 217, alignment: .topTrailing)
         .frame(width: 160, height: 217)
         .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .topLeading, endPoint: .bottomTrailing))
         .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
         .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
         //.clipShape(Circle())
      
        

    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
