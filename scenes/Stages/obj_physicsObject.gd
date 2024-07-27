extends RigidBody2D

@onready var collideSound = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Open channel for collision reporting -- only need one for sonuds
	max_contacts_reported = 1
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Play sound on collision
func _on_body_entered(body):
	
	if body is PhysicsBody2D:
		collideSound.play()
	
	pass # Replace with function body.
