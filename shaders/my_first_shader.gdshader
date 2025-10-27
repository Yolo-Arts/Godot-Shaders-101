shader_type canvas_item;

group_uniforms color;
uniform vec4 color1: source_color = vec4(0.0, 1.0, 0.0, 1.0);
uniform vec4 color2: source_color = vec4(0.0, 0.0, 1.0, 1.0);
group_uniforms;

group_uniforms other_params;
uniform float colorSpeed: hint_range(0.0, 10.0, 0.1) = 2;
uniform float speed: hint_range(0.0, 10.0, 1.0) = 2;
uniform int number = 1;
uniform float slider: hint_range(0.0, 1.0, 0.1) = 1.0;
group_uniforms;

void vertex() {
	if (mod(VERTEX.y, 2.0) == 0.0) {
		VERTEX += vec2(cos(TIME * speed) * 100.0);
	}
	//VERTEX += vec2(TIME, 0.0);
}

void fragment() {
	vec4 output_color;

	vec4 red = vec4(1.0, 0.0, 0.0, 1.0);
	vec4 green = vec4(0.0, 1.0, 0.0, 1.0);
	output_color = mix(color1, color2, (sin(TIME * colorSpeed) + 1.0) / 2.0);
	COLOR = texture(TEXTURE, UV) * output_color;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
