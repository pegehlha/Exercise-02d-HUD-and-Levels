extends KinematicBody2D

export var speed = 2


func _physics_process(delta):
	position += get_input()*speed

func get_input():
	var input_dir = Vector2(0,0)
	if Input.is_action_pressed("left"):
		input_dir.x -= 1
	if Input.is_action_pressed("right"):
		input_dir.x += 1
	return input_dir.rotated(rotation)
