//
//  ContentView.swift
//  RGBApp
//
//  Created by David Sergeev on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, Swift!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Second screen")
            .previewDevice("iPhone 12")
    }
}
