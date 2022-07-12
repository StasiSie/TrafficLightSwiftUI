//
//  lightObject.swift
//  TrafficLightSwiftUI
//
//  Created by Игорь Богданов on 08.07.2022.
//

import SwiftUI

struct lightObject: View {
    
    @State var color: Color
     var opacity: Double
    
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white ,lineWidth: 4 ))
            .shadow(radius: 20)
            .opacity(opacity)
    }
}

struct lightObject_Previews: PreviewProvider {
    static var previews: some View {
        lightObject(color: .red, opacity: 1.0)
    }
}



