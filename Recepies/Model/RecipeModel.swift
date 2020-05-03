//
//  RecipeModel.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-03.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
