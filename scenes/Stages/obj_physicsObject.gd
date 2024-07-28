extends RigidBody2D

# Local variables
var canGrab = false
@onready var collideSound = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Open channel for collision reporting -- only need one for sonuds
	max_contacts_reported = 1

# Called every frame
func _process(delta):
	pass

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
