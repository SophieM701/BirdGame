extends RigidBody2D

var lifespan = 240
@export var type = "simpleSyrup"

# Called when the node enters the scene tree for the first time.
func _ready():
	contact_monitor = true
	max_contacts_reported = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	lifespan -= 1
	if lifespan <= 0:
		queue_free()

func _on_body_entered(body):
	
	if body.is_in_group("liquidCatcher"):
		#body.
		queue_free()
