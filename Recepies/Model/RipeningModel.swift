//
//  RipeningModel.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-03.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
