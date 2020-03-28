//
//  GiftCardRow.swift
//  GiftCards
//
//  Created by Diana Wang on 3/28/20.
//  Copyright © 2020 Ronald Nigash. All rights reserved.
//

import SwiftUI

struct GiftCardRow: View {
    var giftCard: GiftCard
    
    var body: some View {
        VStack {
            Spacer()
            
            giftCard.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(0.7)
            
            Spacer()
        }
    }
}

struct GiftCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GiftCardRow(giftCard: giftCardData[0])
            GiftCardRow(giftCard: giftCardData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
