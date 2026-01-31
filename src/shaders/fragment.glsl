uniform float uTime;

varying vec3 vPosition;
varying vec3 vNormal;
varying vec2 vUv;

float drawCircle(vec2 position, vec2 center, float radius) {
    return step(radius, distance(position, center));
}

float sdBox( in vec2 p, in vec2 b) {
    vec2 d = abs(p) - b;
    return length(max(d, 0.0)) + min(max(d.x, d.y), 0.0);
}

void main() {

    // line
    // vec3(step(0.99, 1.0 - abs(vUv.y - 0.5)))

    //

    gl_FragColor = vec4(vec3(step(0.9, 1.0 - sdBox(vUv - .5, vec2(.15)))), 1.0);
}