//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Игорь Богданов on 08.07.2022.
//

import SwiftUI

enum LightColors {
    case red, yellow, green, none
}

struct ContentView: View {
   
    @State var toggledColor = LightColors.none
    
    
    var body: some View {
        VStack {
            lightObject(color: .red, opacity: toggledColor == .red ? 1.0 : 0.3)
            lightObject(color: .yellow, opacity: toggledColor == .yellow ? 1.0 : 0.3)
            lightObject(color: .green, opacity: toggledColor == .green ? 1.0 : 0.3)
            Spacer()
            Button(setButtonTitle(), action: changeLights)
        }
        .padding()
    }

    private func changeLights() {
        switch toggledColor {
        case .red:
            toggledColor = .yellow
        case .yellow:
            toggledColor = .green
        case .green:
            toggledColor = .none
        case .none:
            toggledColor = .red
        }
    }
    
    private func setButtonTitle() -> String {
        toggledColor == .none ? "Start" : "Change lights"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


