//
//  DishesView.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-02.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct DishesView: View {
    var body: some View {

        HStack(alignment: .center, spacing: 10) {
            VStack {
                DishRowLeft(image: dishesData[0].image, text: dishesData[0].text)
                Divider()
                DishRowLeft(image: dishesData[1].image, text: dishesData[1].text)
                Divider()
                DishRowLeft(image: dishesData[2].image, text: dishesData[2].text)
                Divider()
                DishRowLeft(image: dishesData[3].image, text: dishesData[3].text)
            }
            VStack {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.system(size: 40, weight: Font.Weight.ultraLight))
                HStack {
                    Divider()
                }
            }
            VStack {
                DishRowRight(image: dishesData[4].image, text: dishesData[4].text)
                Divider()
                DishRowRight(image: dishesData[5].image, text: dishesData[5].text)
                Divider()
                DishRowRight(image: dishesData[6].image, text: dishesData[6].text)
                Divider()
                DishRowRight(image: dishesData[7].image, text: dishesData[7].text)
            }
        }
        .modifier(DishRowLayout())
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView().previewLayout(.fixed(width: 414, height: 280))
    }
}

struct DishRowLeft: View {
    var image: String
    var text: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .modifier(DishRowImageSize())
            Spacer()
            Text(text)
        }
    }
}

struct DishRowRight: View {
    var image: String
    var text: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Image(image)
                .resizable()
                .modifier(DishRowImageSize())
        }
    }
}
