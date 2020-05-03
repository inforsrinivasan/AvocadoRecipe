//
//  HEaderView.swift
//  Recepies
//
//  Created by Srinivasan Rajendran on 2020-05-02.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct HeaderView: View {

    // MARK: Properties

    @State private var showHeadline = false
    var header: Header

    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }

    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack(alignment: .center, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 5, height: 115)

                VStack(alignment: .leading, spacing: 10) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }
                .padding()
                .frame(width: 281, height: 115)
                .background(Color("ColorBlackTransparentLight"))
            }
            .offset(x: -80, y: self.showHeadline ? 80 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: { self.showHeadline.toggle() })

        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HEaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData.first!).previewLayout(.fixed(width: 480, height: 320))
    }
}
