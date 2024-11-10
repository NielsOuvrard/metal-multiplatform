//
//  MetalView.swift
//  metal-multiplatform
//
//  Created by Niels Ouvrard on 06/11/2024.
//

import MetalKit
import SwiftUI

struct MetalView {
    
    @State private var renderer: MetalRenderer = MetalRenderer()
    
    @Binding var rotation: Float // thing need to be sent as parameter
    
    private func makeMetalView() -> MTKView {
        let view = MTKView()
        view.clearColor = MTLClearColor(red: 0.05, green: 0.518, blue: 1, alpha: 1)
        
        view.device = renderer.device
        view.delegate = renderer
        
        return view
    }
    
    private func updateMetalView() {
        renderer.updateRotation(angle: rotation)
    }
}
#if os(iOS)
extension MetalView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        makeMetalView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        updateMetalView()
    }
}
#elseif os(macOS)
extension MetalView: NSViewRepresentable {
    func makeNSView(context: Context) -> some NSView {
        makeMetalView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        updateMetalView()
    }
}
#endif
