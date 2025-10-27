shader_type canvas_item;


void fragment() {
	vec4 original_color = texture(TEXTURE, UV);
	
	float red = original_color.r;
	float green = original_color.g;
	float blue = original_color.b;
	
	float average = (red + green + blue) / 3.0;
	
	COLOR = vec4(average, average, average, 1.0);
	COLOR.a = original_color.a;
}

