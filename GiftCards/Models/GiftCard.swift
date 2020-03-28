//
//  GiftCard.swift
//  GiftCards
//
//  Created by Diana Wang on 3/28/20.
//  Copyright © 2020 Ronald Nigash. All rights reserved.
//

import SwiftUI

struct GiftCard: Codable, Identifiable {
    var id: Int
    var value: Int
    var companyName: String
    fileprivate var imageName: String
}

extension GiftCard {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
