extends Camera2D

var wait = 30
var topside = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# Activate limit smoothing after two frames
	wait -= 1
	if wait <= 0:
		#limit_smoothed = true
	
