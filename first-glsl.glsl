

void mainImage(out vec4 fragColor,in vec2 fragCoord){
  
  vec2 uv = (fragCoord.xy - 0.5 * iResolution.xy) / min(iResolution.x, iResolution.y);
  // vec2 uv = (fragCoord.xy / iResolution.xy - 0.5) * 2.0;

  vec2 onePixel = 1.0 * vec2(1.0) / iResolution.xy;
  vec3 color = vec3(0.0);

  vec2 nuv = fract(uv * 3.0);
  if(abs(nuv.x) < fwidth(nuv.x)) {
    color = vec3(1.0);
  }
  if(abs(nuv.y) < fwidth(nuv.y)) {
    color = vec3(1.0);
  }

  fragColor = vec4(color, 1.0);
}