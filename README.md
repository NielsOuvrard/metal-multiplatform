# Metal Multiplatform Project

This project demonstrates a simple Metal-based renderer for a multiplatform application. It utilizes MetalKit to create a rendering pipeline, load textures, and render a set of vertices with applied transformations.

The `MetalRenderer` class is responsible for setting up the Metal device, command queue, vertex buffer, and pipeline state. It also handles the loading of textures and the rendering of frames. The renderer applies a rotation transformation to the vertices and updates the rotation dynamically based on the current time.

The project includes a `Texturable` protocol to manage optional textures and a `Vertex` structure to define the properties of each vertex, including position, color, and texture coordinates.

The main rendering loop is implemented in the `draw` method, which updates the rotation matrix, sets up the render encoder, and draws the primitives.

This project serves as exercise for learning Metal.

## Overview

[Metal Documentation](https://developer.apple.com/documentation/metal)
