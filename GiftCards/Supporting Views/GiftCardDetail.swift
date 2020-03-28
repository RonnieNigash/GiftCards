//
//  GiftCardDetail.swift
//  GiftCards
//
//  Created by Diana Wang on 3/28/20.
//  Copyright © 2020 Ronald Nigash. All rights reserved.
//

import SwiftUI

struct GiftCardDetail: View {
    var giftCard: GiftCard
    @State private var quantity = 1
    
    var body: some View {
        VStack {
            Text(giftCard.companyName)
                .font(.title)
            
            Text("$\(String(giftCard.value))")
                .font(.subheadline)
            
            HStack {
                Text("Quantity: ")
            }

            Spacer()
            
            HStack {
                Button(action: {
                }) {
                   Text("Cancel")
                    .padding()
                }
                
                Spacer()
                
                Button(action: {
                }) {
                   Text("Print Gift Cards")
                    .padding()
                }
            }
        }
    .padding()
    }
}

struct GiftCardDetail_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            GiftCardDetail(giftCard: giftCardData[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
