//
//  MetalView.swift
//  metal-multiplatform
//
//  Created by Niels Ouvrard on 06/11/2024.
//

import MetalKit
import SwiftUI

struct MetalView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = MTKView()
        return view
    }
    
    func updateUIView(_ uiView: MTKView, context: Context) {
    }
}
