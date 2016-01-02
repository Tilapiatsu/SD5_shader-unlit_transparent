/////////////////////////////// Vertex shader
#version 120

attribute vec4 iVS_Position;
attribute vec2 iVS_UV;

varying vec2 iFS_UV;
uniform mat4 worldViewProjMatrix;

void main()
{
    gl_Position = worldViewProjMatrix * iVS_Position;
    iFS_UV = iVS_UV;
}
