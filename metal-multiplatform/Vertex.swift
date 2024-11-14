//
//  Vertex.swift
//  metal-multiplatform
//
//  Created by Niels Ouvrard on 06/11/2024.
//

import MetalKit

struct Vertex {
    let position2d: SIMD2<Float> // float3
    let colorRgb: SIMD3<Float> // float4
    let texture: SIMD2<Float> // float2
    
    static func buildDefaultVertexDescriptor() -> MTLVertexDescriptor {
        let vertexDescriptor = MTLVertexDescriptor()
        
        vertexDescriptor.attributes[0].format = .float2
        vertexDescriptor.attributes[0].bufferIndex = 0
        vertexDescriptor.attributes[0].offset = 0
        
        vertexDescriptor.attributes[1].format = .float3
        vertexDescriptor.attributes[1].bufferIndex = 0
        vertexDescriptor.attributes[1].offset = MemoryLayout<Vertex>.offset(of: \.colorRgb)!
        
        vertexDescriptor.attributes[2].format = .float2
        vertexDescriptor.attributes[2].bufferIndex = 0
        vertexDescriptor.attributes[2].offset = MemoryLayout<Vertex>.offset(of: \.texture)!
        
        vertexDescriptor.layouts[0].stride = MemoryLayout<Vertex>.stride
        
        return vertexDescriptor
    }
}
