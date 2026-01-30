uniform float uTime;

varying vec3 vPosition;
varying vec3 vNormal;
flat varying vec2 vUv;


void main() {
    vPosition = position;
    vNormal = normal;
    vUv = uv;

    // modelMatrix -> position, rotation, scale of object
    // viewMatrix -> position, rotation, scale of camera
    // projectionMatrix -> projects our object to screen (aspect ratio & the perspective)

    vec4 modelViewPosition = modelViewMatrix * vec4(position, 1.0);
    vec4 projectedPosition = projectionMatrix * modelViewPosition;
    gl_Position = projectedPosition;
}