extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# Jump to bar scene on key press
	if( Input.is_action_pressed("Left-Click")):
		get_tree().change_scene_to_file(("res://scenes/Stages/sta_bar.tscn"))
	
	pass
