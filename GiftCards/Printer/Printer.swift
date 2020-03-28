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

func printImage() {
    let channel = BRLMChannel(wifiIPAddress: "IPAddress.of.your.printer")

    let generateResult = BRLMPrinterDriverGenerator.open(channel)
    guard generateResult.error.code == BRLMOpenChannelErrorCode.noError,
        let printerDriver = generateResult.driver else {
            print("Error - Open Channel: \(generateResult.error.code)")
            return
    }
    
    //@interface BRLMQLPrintSettings : NSObject <NSCoding, BRLMPrintSettingsProtocol, BRLMPrintImageSettings>


    //let model: BRLMPrinterModel = BRLMPrinterModelQL_820NWB
    //let model = BRLMPrinterModelQL_820NWB

    
    guard
        let url = Bundle.main.url(forResource: "Filename", withExtension: "Extension"),
        let printSettings = BRLMQLPrintSettings(defaultPrintSettingsWith: .QL_820NWB)
    else {
            print("Error - Image file is not found.")
            return
    }

    printSettings.labelSize = .rollW62
    printSettings.autoCut = true

    let printError = printerDriver.printImage(with: url, settings: printSettings)

    if printError.code != .noError {
        print("Error - Print Image: \(printError.description)")
        return
    }

    print("Success - Print Image")
    printerDriver.closeChannel()
}
