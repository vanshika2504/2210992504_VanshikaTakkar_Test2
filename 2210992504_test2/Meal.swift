//
//  Meal.swift
//  2210992504_test2
//
//  Created by Vanshika on 23/11/24.
//

import Foundation

struct Meal {
    var name: String
   
    var food: [Food]
}
var meals: [Meal] {
    let breakfast = Meal(name: "Breakfast", food: [
        Food(name: "Pancakes", ingredients:"chocolate, flour", preparationInstructions: "Fluffy pancakes with syrup", category: "vegetarian",NutritionalValue: "55" ),
        Food(name: "Orange Juice", ingredients: "oranges", preparationInstructions: "peel oranges", category: "beverage", NutritionalValue: "88"),
        Food(name: "Sandwich", ingredients: "bread, vegetables", preparationInstructions: "bake the bread", category: "vegetarian", NutritionalValue: "50")
    ])
    
    let lunch = Meal(name: "Lunch", food: [
        Food(name: "Rice", ingredients: "rice, salts", preparationInstructions: "cook it", category: "vegetarian", NutritionalValue: "90"),
        Food(name: "Caesar Salad", ingredients: "Classic Caesar salad with croutons", preparationInstructions: "finely chop vegetables", category: "Salad", NutritionalValue: "80"),
        Food(name: "Iced Tea", ingredients: "Refreshing iced tea with lemon", preparationInstructions: "pour in cold water", category: "refreshment", NutritionalValue: "60")
    ])
    
    let dinner = Meal(name: "Dinner", food: [
        Food(name: "Naam", ingredients: "flour",preparationInstructions: "bake",category: "vegetarian", NutritionalValue: "70"),
        Food(name: "Garlic Bread", ingredients: "Crispy garlic bread", preparationInstructions: "bake bread", category: "vegetarian",  NutritionalValue: "56"),
        Food(name: "Salad",ingredients: "vegetables",preparationInstructions: "finely chop vegetables", category: "Salad", NutritionalValue: "80")
    ])
    
    return [breakfast, lunch, dinner]
}
