//
//  ContentView.swift
//  sliderBGColor
//
//  Created by Brian Malagoli on 20/03/2020.
//  Copyright © 2020 Brian Malagoli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var redColor = 0.0
    @State var greenColor = 0.0
    @State var blueColor = 0.0
    
    var minimumValue = 0.0
    var maximumvalue = 255.0
    
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(Color(red: (redColor / 255), green: (greenColor / 255), blue: (blueColor / 255)))
            Spacer()
            HStack {
                //red
                VStack {
                    HStack {
                        Text("\(Int(minimumValue))")
                        Slider(value: $redColor, in: minimumValue...maximumvalue)
                        Text("\(Int(maximumvalue))")
                    }
                    Text("Red: \(Int(redColor))")
                }
                //green
                VStack {
                    HStack {
                        Text("\(Int(minimumValue))")
                        Slider(value: $greenColor, in: minimumValue...maximumvalue)
                        Text("\(Int(maximumvalue))")
                    }
                    Text("Green: \(Int(greenColor))")
                }
                //blue
                VStack {
                    HStack {
                        Text("\(Int(minimumValue))")
                        Slider(value: $blueColor, in: minimumValue...maximumvalue)
                        Text("\(Int(maximumvalue))")
                    }
                    Text("Blue: \(Int(blueColor))")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
