shader_type canvas_item;

uniform vec4 flashColor: source_color = vec4(1.0);
uniform float flash_percent: hint_range(0.0, 1.0, 0.1);

void fragment() {
	vec4 original_color = texture(TEXTURE, UV);
	
	COLOR = mix(original_color, flashColor, flash_percent);
	COLOR.a *= original_color.a;
}

