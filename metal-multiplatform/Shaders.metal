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
    float2 textureCoordinates [[attribute(2)]];
};

struct FragmentInput {
    float4 position [[position]];
    float4 color;
    float2 textureCoordinates;
};

vertex FragmentInput vertex_main(Vertex v [[stage_in]],
                                 constant float4x4 &matrix [[buffer(1)]]) {
    return {
        .position { matrix * v.position },
        .color { v.color },
        .textureCoordinates { v.textureCoordinates }
    };
}

fragment float4 fragment_main(FragmentInput input [[stage_in]]) {
    return input.color;
}

fragment float4 texture_fragment(FragmentInput v [[stage_in]],
                                 texture2d<float> texture [[texture(0)]]) {
    constexpr sampler defaultSampler;
    float4 color = texture.sample(defaultSampler, v.textureCoordinates);
    return color;
}
