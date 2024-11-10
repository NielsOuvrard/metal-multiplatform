//
//  ContentView.swift
//  metal-multiplatform
//
//  Created by Niels Ouvrard on 06/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Float = 0.0
        
    var body: some View {
        VStack {
            //Color.blue.edgesIgnoringSafeArea(.all)
            Spacer()
            MetalView(rotation: $rotation).aspectRatio(1, contentMode: .fit)
            Spacer()
            
            Text("Rotation")
            HStack {
                Text("-π")
                Slider(value: $rotation, in: -(.pi)...(.pi))
                Text("π")
            }
            Spacer()
            
            Button("Reset") {
                rotation = 0.0
            }
        }
    }
}

#Preview {
    ContentView()
}
