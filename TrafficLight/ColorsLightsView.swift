//
//  ColorsLightsView.swift
//  TrafficLight
//
//  Created by D KONDROV on 09.09.2022.
//

import SwiftUI

struct ColorsLightsView: View {
    
    var redLight: some View {
        setLight()
    }
    var yellowLight: some View {
        setLight()
    }
    var greenLight: some View {
        setLight()
    }
    
    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight
        }
    }
    
    private func setLight() -> some View {
        return Circle()
            .frame(width: 125, height: 125)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}


struct ColorsLightsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsLightsView()
    }
}
