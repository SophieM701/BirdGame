extends Camera2D

# Env variables
enum{ ABOVE, TRANSD, BELOW, TRANSU }
var cameraState = ABOVE
var transitionTimer = 30

@onready var cursor = $"../Cursor"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# Follow cursor
	position.x = (-pow((180-cursor.global_position.x), 3))/100000
	
	# Bahavior based on cameraState
	match cameraState:
		ABOVE:
			pass
			
		TRANSD:
			position.y = 100
			if transitionTimer:
				transitionTimer -= 1
			else:
				cameraState = BELOW
				transitionTimer = 30
			
		BELOW:
			pass
			
		TRANSU:
			position.y = 0
			if transitionTimer:
				transitionTimer -= 1
			else:
				cameraState = ABOVE
				transitionTimer = 30
			


func _on_area_2d_mouse_entered():
	if cameraState == ABOVE:
		cameraState = TRANSD
	elif cameraState == BELOW:
		cameraState = TRANSU
		
