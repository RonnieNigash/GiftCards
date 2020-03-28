//
//  Printer.swift
//  Gift Cards
//
//  Created by Ronald Nigash on 3/28/20.
//  Copyright © 2020 Ronald Nigash. All rights reserved.
//

import Foundation

func yourGreatFeature() {
    let channel = BRLMChannel(wifiIPAddress: "IPAddress.of.your.printer")

    let generateResult = BRLMPrinterDriverGenerator.open(channel)
    guard generateResult.error.code == BRLMOpenChannelErrorCode.noError,
        let printerDriver = generateResult.driver else {
            print("Error - Open Channel: %d", generateResult.error.code)
            return
    }

    print("Success - Open Channel")
    //
    // Put any code to use printer
    //

    printerDriver.closeChannel()
}
