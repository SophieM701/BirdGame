extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# Hide mouse
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	# Follow invisible cursor
	position.x = get_global_mouse_position().x
	position.y = get_global_mouse_position().y
	
	pass
