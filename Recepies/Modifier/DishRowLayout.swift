//
//  DishRowLayout.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-02.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct DishRowLayout: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}


