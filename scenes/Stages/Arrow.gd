extends Polygon2D

@onready var speaker = $"../Patron01"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Follow the position of the current speaker
	position.x = speaker.position.x
	
