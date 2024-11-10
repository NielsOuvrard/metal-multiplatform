//
//  ContentView.swift
//  metal-multiplatform
//
//  Created by Niels Ouvrard on 06/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            MetalView().aspectRatio(1, contentMode: .fit)
        }
    }
}

#Preview {
    ContentView()
}
