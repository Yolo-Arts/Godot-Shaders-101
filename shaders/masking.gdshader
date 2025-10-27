shader_type canvas_item;

uniform sampler2D mask_texture;

void fragment() {
	vec4 original_color = texture(TEXTURE, UV);
	vec4 final_color = original_color;
	vec4 mask = texture(mask_texture, UV);

	if (mask.r > 0.0) {
		COLOR.a = mask.r;
	}

	//if (original_color.a > 0.0) {
		//final_color.a = mask.r;
	//}
//
	//COLOR = final_color;
}
