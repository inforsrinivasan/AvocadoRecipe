//
//  ContentView.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-02.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var headers: [Header] = headersData
    var facts = factsData
    var recipes: [Recipe] = recipesData

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                // MARK: Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }

                // MARK: Dishes
                VStack {
                    Text("Avocado Dishes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    DishesView()
                }

                // MARK: Facts

                VStack {
                    Text("Avocado Facts")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 60) {
                            ForEach(facts) { fact in
                                FactsView(fact: fact)
                            }
                        }
                        .padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 20)
                    }
                }

                // MARK: Recipe Cards

                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)


                // MARK: Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .fontWeight(.bold)
                    .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
            .padding()
                .padding(.bottom, 85)
            }
            .background(Color("ColorAppearenceAdaptive"))
        }
        .edgesIgnoringSafeArea(.all)
    .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData).previewDevice("iPhone 11").environment(\.colorScheme, .light)//.previewLayout(.fixed(width: 370, height: 1500))
    }
}
