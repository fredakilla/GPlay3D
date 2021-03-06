///////////////////////////////////////////////////////////
// Atttributes
attribute vec3 a_position;
attribute vec2 a_texcoord0;
attribute vec4 a_color0;

///////////////////////////////////////////////////////////
// Uniforms
uniform mat4 u_projectionMatrix;

///////////////////////////////////////////////////////////
// Varyings
varying vec2 v_texCoord;
varying vec4 v_color;


void main()
{
    gl_Position = u_projectionMatrix * vec4(a_position, 1);
    v_texCoord = a_texcoord0;
    v_color = a_color0;
}
