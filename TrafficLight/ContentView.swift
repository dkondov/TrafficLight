//
//  ContentView.swift
//  TrafficLight
//
//  Created by D KONDROV on 09.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.001
    @State private var opacityYellow = 0.001
    @State private var opacityGreen = 0.001
    
    var body: some View {
        
        ZStack {
                        
            VStack {
                ColorsLightsView().redLight.foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: opacityRed))
                ColorsLightsView().yellowLight.foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: opacityYellow))
                ColorsLightsView().greenLight.foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: opacityGreen))
                
                Spacer()
                
                Button(action: {changeOpacity()}, label: {
                    if opacityRed == 1.0 || opacityYellow == 1.0 || opacityGreen == 1.0 {
                        Text ("NEXT")
                    } else {
                        Text("START")
                    }
                })
                    .frame(width: 150, height: 75)
                    .background(Color.blue).cornerRadius(15)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.black).ignoresSafeArea())
    }
    
    private func changeOpacity() {
        
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
      
        } else if opacityRed == 1.0 {
            opacityRed = 0.001
            opacityYellow = 1.0
        
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.001
            opacityGreen = 1.0
        
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.001
            opacityRed = 1.0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
