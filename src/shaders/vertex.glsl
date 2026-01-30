uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;
uniform mat4 modelMatrix;
uniform mat4 viewMatrix;

attribute vec3 position;

void main() {
    // modelMatrix -> position, rotation, scale of object
    // viewMatrix -> position, rotation, scale of camera
    // projectionMatrix -> projects our object to screen (aspect ratio & the perspective)
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}