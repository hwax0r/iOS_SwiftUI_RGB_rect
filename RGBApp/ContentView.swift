//
//  ContentView.swift
//  RGBApp
//
//  Created by David Sergeev on 14.11.2021.
//

import SwiftUI


struct ContentView: View {
    // Хранение компанентов цвета
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5

    var body: some View {
        VStack{
            HStack{
                VStack(spacing: 16.0) {
                    Text("Red")
                        .frame(maxWidth: 60, alignment: .leading)
                    Text("Green")
                        .frame(maxWidth: 60, alignment: .leading)
                    Text("Blue")
                        .frame(maxWidth: 60, alignment: .leading)
                }
                VStack {
                    Slider(value: $redComponent)
                    Slider(value: $greenComponent)
                    Slider(value: $blueComponent)
                }
            }
            
            let rectColor = Color(red: redComponent,
                                  green: greenComponent,
                                  blue: blueComponent,
                                  opacity: 1.0)
            let rect = Rectangle()
                .border(Color.black, width: 4)
                .frame(width: 200, height: 200)
                .foregroundColor(rectColor)
            
            switch (redComponent, greenComponent, blueComponent) {
            case (1.0, 1.0, 1.0):
                rect.overlay(Text("White").foregroundColor(Color.black))
            case (0.0, 0.0, 0.0):
                rect.overlay(Text("Black").foregroundColor(Color.white))
            default:
                rect
            }
            
        }.padding(.all, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
