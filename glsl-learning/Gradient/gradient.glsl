#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

void main() {
    // Normalisasi koordinat piksel
    vec2 uv = gl_FragCoord.xy / u_resolution;

    // Atur warna berdasarkan waktu
    vec3 color = vec3(0.5 + 0.5 * cos(u_time), uv.x, uv.y);

    // Keluarkan warna
    gl_FragColor = vec4(color, 1.0);
}
