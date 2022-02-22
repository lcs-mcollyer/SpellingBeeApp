//
//  ItemToSpell.swift
//  SpellingBee
//
//  Created by Russell Gordon on 2022-02-16.
//

import Foundation

struct ItemToSpell: Identifiable {
    
    let id = UUID()
    let word: String
    let imageName: String
    
}

// Create the list of items that can be spelled
let itemsToSpell = [
    
    ItemToSpell(word: "Watermelon",
                imageName: "watermelon"),
    
    ItemToSpell(word: "Waffles",
                imageName: "waffles"),
    
    ItemToSpell(word: "Turkey",
                imageName: "turkey"),
    
    ItemToSpell(word: "Tomato",
                imageName: "tomato"),
    
    ItemToSpell(word: "Strawberry",
                imageName: "strawberry"),
    
    ItemToSpell(word: "Steak",
                imageName: "steak"),
    
    ItemToSpell(word: "Soup",
                imageName: "soup"),
    
    ItemToSpell(word: "Soda",
                imageName: "soda"),
    
    ItemToSpell(word: "Sandwich",
                imageName: "sandwich"),
    
    ItemToSpell(word: "Pumpkin",
                imageName: "pumpkin"),
    
    ItemToSpell(word: "Potato",
                imageName: "potato"),
    
    ItemToSpell(word: "Pizza",
                imageName: "pizza"),
    
    ItemToSpell(word: "Pineapple",
                imageName: "pineapple"),
    
    ItemToSpell(word: "Pear",
                imageName: "pear"),
    
    ItemToSpell(word: "Peas",
                imageName: "peas"),
    
    ItemToSpell(word: "Pancakes",
                imageName: "pancakes"),
    
    ItemToSpell(word: "Orange",
                imageName: "orange"),
    
    ItemToSpell(word: "Onion rings",
                imageName: "onion-rings"),
    
    ItemToSpell(word: "Onion",
                imageName: "onion"),
    
    ItemToSpell(word: "Mushroom",
                imageName: "mushroom"),
    
    ItemToSpell(word: "Milkshake",
                imageName: "milkshake"),
    
    ItemToSpell(word: "Lemon",
                imageName: "lemon"),
    
    ItemToSpell(word: "Green pepper",
                imageName: "green-pepper"),
    
    ItemToSpell(word: "Grapes",
                imageName: "grapes"),
    
    ItemToSpell(word: "Eggplant",
                imageName: "eggplant"),
    
    ItemToSpell(word: "French fries",
                imageName: "french-fries"),
    
    ItemToSpell(word: "Eggs",
                imageName: "eggs"),
    
    ItemToSpell(word: "Cucumber",
                imageName: "cucumber"),
    
    ItemToSpell(word: "Corn",
                imageName: "corn"),
    
    ItemToSpell(word: "Cherry",
                imageName: "cherry"),
    
    ItemToSpell(word: "Celery",
                imageName: "celery"),
    
    ItemToSpell(word: "Carrot",
                imageName: "carrot"),
    
    ItemToSpell(word: "Hamburger",
                imageName: "hamburger"),
    
    ItemToSpell(word: "Banana",
                imageName: "banana"),
    
    ItemToSpell(word: "Apple",
                imageName: "apple"),
    
]
