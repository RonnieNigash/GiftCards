//
//  ContentView.swift
//  Gift Cards
//
//  Created by Ronald Nigash on 3/28/20.
//  Copyright © 2020 Ronald Nigash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            GiftCardList()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Print")
                    }
                }
                .tag(0)
            Text("Redeem Cards")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Redeem")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
