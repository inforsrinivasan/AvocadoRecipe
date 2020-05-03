//
//  VerticalDivider.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-02.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct DishRowImageSize: ViewModifier {

    func body(content: Content) -> some View {
        content
        .frame(width: 40, height: 40)
    }

}

