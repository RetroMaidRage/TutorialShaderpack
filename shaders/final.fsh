#version 120

varying vec2 TexCoords;
uniform sampler2D colortex0;

void main(){

vec3 Color = texture2D(colortex0, TexCoords).rgb;
//Color.r += 0.25; Color.g += 0.25; Color.b += 0.25;
Color = Color / (Color + 2.2) * (1.0+2.0);
//if(TexCoords.y > 0.9 && TexCoords.x >0.9) Color = vec3(0,0,0.5);
//if(TexCoords.y < 0.075 && TexCoords.x >0.9) Color = vec3(0,0,0);
gl_FragColor = vec4(Color, 1.0f);

}
