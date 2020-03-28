//
//  GiftCardList.swift
//  GiftCardPointOfSale
//
//  Created by Diana Wang on 3/28/20.
//  Copyright © 2020 Ronnie Nigash. All rights reserved.
//

import SwiftUI

struct GiftCardList: View {
    
    var body: some View {
        NavigationView {
            List(giftCardData) { giftcard in
                NavigationLink(destination: GiftCardDetail(giftCard: giftcard)) {
                    GiftCardRow(giftCard: giftcard)
                }
            }
            .navigationBarTitle("Print Gift Cards")
        }
    }
}

struct GiftCardList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            GiftCardList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
