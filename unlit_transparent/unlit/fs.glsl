//////////////////////////////// Fragment shader
#version 120

#include "../common/common.glsl"

varying vec2 iFS_UV;

uniform float tiling = 1.0;

uniform sampler2D diffuseMap;
uniform sampler2D opacityMap;


void main()
{
 

  // ------------------------------------------
  // Update UV
  vec2 uv = iFS_UV * tiling;

  // Diffuse
  vec3 diffuseColor = srgb_to_linear(texture2D(diffuseMap,uv).rgb);

  float opacityColor = srgb_to_linear(texture2D(opacityMap,uv).rgb).r;


  // ------------------------------------------
  vec3 finalcolor = diffuseColor;

  // Final Color
  gl_FragColor = vec4(linear_to_srgb(finalcolor), opacityColor);
}

