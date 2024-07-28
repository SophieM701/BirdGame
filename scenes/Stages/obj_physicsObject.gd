extends RigidBody2D

# Local variables
var canGrab = false
var grabbed = false

@onready var collideSound = $AudioStreamPlayer2D
@onready var colorRect = $Placeholder
@onready var collision = $Collision


# Called when the node enters the scene tree for the first time.
func _ready():
	# Open channel for collision reporting -- only need one for sonuds
	max_contacts_reported = 1
	input_pickable = true

# Called every frame
func _process(delta):
	
	# If moused over, can be grabbed
	if canGrab && Input.is_action_just_pressed("Left-Click"):
		grabbed = true
	
	# If mouse released, end grab regardless of circumstance
	if Input.is_action_just_released("Left-Click"):
		grabbed = false
		
	# If currently grabbed, follow cursor
	if grabbed:
		position.x = get_global_mouse_position().x
		position.y = get_global_mouse_position().y
		freeze = true
	else:
		freeze = false

# Play sound on collision
func _on_body_entered(body):
	if body is PhysicsBody2D:
		collideSound.play()

# The player can only puck this up if the cursor is hovering over it.
# While that is the case, canGrab is set to true
func _on_mouse_entered():
	canGrab = true
func _on_mouse_exited():
	canGrab = false
