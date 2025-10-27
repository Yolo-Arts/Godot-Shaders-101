extends Node2D

@onready var sprite = $Sprite2D

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		var new_speed = randf_range(1.0, 10.0)
		sprite.material.set_shader_parameter("speed", new_speed)
		var new_color = Color(randf(), randf(), randf(), 1.0)
		var new_color2 = Color(randf(), randf(), randf(), 1.0)
		sprite.material.set_shader_parameter("color1", new_color)
		sprite.material.set_shader_parameter("color2", new_color2)
	
