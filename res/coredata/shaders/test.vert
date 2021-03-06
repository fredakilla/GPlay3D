attribute vec4 a_position;
attribute vec3 a_normal;
attribute vec2 a_texcoord0;


uniform mat4 u_worldViewProjectionMatrix;
uniform mat4 u_inverseTransposeWorldViewMatrix;
uniform mat4 u_worldMatrix;
uniform mat4 u_viewProjectionMatrix;
uniform mat4 u_viewMatrix;
uniform mat4 u_projectionMatrix;
uniform mat4 u_worldViewMatrix;

varying vec3 v_position;
varying vec3 v_normal;
varying vec2 v_texcoord0;


void main()
{
    vec4 worldPos = u_worldMatrix * vec4(a_position.xyz, 1.0);
    v_position = worldPos.xyz; 
    v_texcoord0 = a_texcoord0;
    
    mat3 normalMatrix = transpose(inverse(mat3(u_worldMatrix)));
    v_normal = normalMatrix * a_normal;

    gl_Position = u_worldViewProjectionMatrix * vec4(a_position.xyz, 1.0);
}