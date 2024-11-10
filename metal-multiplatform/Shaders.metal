//
//  Shaders.metal
//  metal-multiplatform
//
//  Created by Niels Ouvrard on 06/11/2024.
//

#include <metal_stdlib>
using namespace metal;

struct Vertex {
    float4 position [[attribute(0)]];
    float4 color [[attribute(1)]];
};

struct FragmentInput {
    float4 position [[position]];
    float4 color;
};

vertex FragmentInput vertex_main(Vertex v [[stage_in]]) {
    return {
        .position { v.position },
        .color { v.color }
    };
}

fragment float4 fragment_main(FragmentInput input [[stage_in]]) {
    return input.color;
}
