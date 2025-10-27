shader_type canvas_item;

uniform sampler2D gradient_texture;

void fragment() {
	vec4 original_color = texture(TEXTURE, UV);
	
	float red = original_color.r;
	float green = original_color.g;
	float blue = original_color.b;
	
	float average = (red + green + blue) / 3.0;
	
	vec2 sample_coords = vec2(average);
	vec4 gradient_color = texture(gradient_texture, sample_coords);
	
	COLOR = vec4(gradient_color.rgb, 1.0);
	COLOR.a = original_color.a;
}

