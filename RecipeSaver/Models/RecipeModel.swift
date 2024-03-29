//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/22/24.
//

import Foundation


//enums in swiftui commonly used to define states, choices, or options that influence the behavior and appearance of the user interface
enum Category: String {
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name : String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue //raw value means it'll read the string not the case itself
    let datePublished: String
    let url: String
}

extension Recipe {
    static //static here means the property is shared among all instances of the struct
    let all: [Recipe] = [
        Recipe(name: "Creamy Carrot Soup",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
               description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
               ingredients: "¼ cup cashews 1 medium onion, cut into ½-inch dice (2 cups)1½ pounds carrots, cut into ½-inch dice (3½ cups) 1 red bell pepper, peeled and cut into ½-inch dice (1 cup) 1 sprig fresh rosemary 1 sprig fresh thyme 1 large fresh sage leaf 4 cloves garlic, minced 1 tablespoon lemon juice Sea salt and freshly ground black pepper or cayenne pepper, to taste ½ cup fresh pomegranate seeds 2 tablespoons finely chopped fresh parsley",
               directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
               category: "Soup",
               datePublished: "2019-11-11",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        
        Recipe(name: "Kale and Soup",
               image: "https://www.forksoverknives.com/recipes/vegan-menus-collections/pomegranate-recipes-to-make-your-menu-sparkle/",
               description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
               ingredients: "¼ cup cashews 1 medium onion, cut into ½-inch dice (2 cups)1½ pounds carrots, cut into ½-inch dice (3½ cups) 1 red bell pepper, peeled and cut into ½-inch dice (1 cup) 1 sprig fresh rosemary 1 sprig fresh thyme 1 large fresh sage leaf 4 cloves garlic, minced 1 tablespoon lemon juice Sea salt and freshly ground black pepper or cayenne pepper, to taste ½ cup fresh pomegranate seeds 2 tablespoons finely chopped fresh parsley",
               directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
               category: "Soup",
               datePublished: "2019-11-11",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        
        Recipe(name: "Chicken Parm",
               image: "https://www.forksoverknives.com/recipes/vegan-menus-collections/pomegranate-recipes-to-make-your-menu-sparkle/",
               description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
               ingredients: "¼ cup cashews 1 medium onion, cut into ½-inch dice (2 cups)1½ pounds carrots, cut into ½-inch dice (3½ cups) 1 red bell pepper, peeled and cut into ½-inch dice (1 cup) 1 sprig fresh rosemary 1 sprig fresh thyme 1 large fresh sage leaf 4 cloves garlic, minced 1 tablespoon lemon juice Sea salt and freshly ground black pepper or cayenne pepper, to taste ½ cup fresh pomegranate seeds 2 tablespoons finely chopped fresh parsley",
               directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
               category: "Soup",
               datePublished: "2019-11-11",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        
        Recipe(name: "Lasagna",
               image: "https://www.forksoverknives.com/recipes/vegan-menus-collections/pomegranate-recipes-to-make-your-menu-sparkle/",
               description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
               ingredients: "¼ cup cashews 1 medium onion, cut into ½-inch dice (2 cups)1½ pounds carrots, cut into ½-inch dice (3½ cups) 1 red bell pepper, peeled and cut into ½-inch dice (1 cup) 1 sprig fresh rosemary 1 sprig fresh thyme 1 large fresh sage leaf 4 cloves garlic, minced 1 tablespoon lemon juice Sea salt and freshly ground black pepper or cayenne pepper, to taste ½ cup fresh pomegranate seeds 2 tablespoons finely chopped fresh parsley",
               directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
               category: "Soup",
               datePublished: "2019-11-11",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        
        Recipe(name: "Enchiladas",
               image: "https://www.forksoverknives.com/recipes/vegan-menus-collections/pomegranate-recipes-to-make-your-menu-sparkle/",
               description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
               ingredients: "¼ cup cashews 1 medium onion, cut into ½-inch dice (2 cups)1½ pounds carrots, cut into ½-inch dice (3½ cups) 1 red bell pepper, peeled and cut into ½-inch dice (1 cup) 1 sprig fresh rosemary 1 sprig fresh thyme 1 large fresh sage leaf 4 cloves garlic, minced 1 tablespoon lemon juice Sea salt and freshly ground black pepper or cayenne pepper, to taste ½ cup fresh pomegranate seeds 2 tablespoons finely chopped fresh parsley",
               directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
               category: "Soup",
               datePublished: "2019-11-11",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/")
    ]
}
