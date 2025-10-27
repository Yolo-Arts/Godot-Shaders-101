shader_type canvas_item;

group_uniforms noise;
uniform float dissolve_percent: hint_range(0.0, 1.0) = 0.0;
uniform sampler2D noise_tex;
group_uniforms;

void fragment() {
	vec4 originalColor = texture(TEXTURE, UV);
	vec4 finalColor = originalColor;
	vec4 noise = texture(noise_tex, UV);
	
	if (dissolve_percent >= noise.r) {
		finalColor.a = 0.0;
	}
	
	COLOR = finalColor;
}

