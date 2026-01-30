uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;
uniform mat4 modelMatrix;
uniform mat4 viewMatrix;

attribute vec3 position;

void main() {
    // modelMatrix -> position, rotation, scale of object
    // viewMatrix -> position, rotation, scale of camera
    // projectionMatrix -> projects our object to screen (aspect ratio & the perspective)

    vec4 modelViewPosition = modelViewMatrix * vec4(position, 1.0);
    vec4 projectedPosition = projectionMatrix * modelViewPosition;
    gl_Position = projectedPosition;
}