class_name Player

extends Sprite2D

var direction
var playerSpeed

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	
	# Inittialize the direction vector to be 0 because the player hasn't moved yet
	direction = Vector2(0, 0)
	
	# For now, just set the player speed to 5.0
	playerSpeed = 5.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#pass
	
	if Input.is_action_pressed("MoveLeft"):
		direction += Vector2(-1 * playerSpeed, 0) # Move the player to the left
	
	elif Input.is_action_pressed("MoveRight"):
		direction += Vector2(1 * playerSpeed, 0) # Move the player to the right
	
	elif Input.is_action_pressed("MoveDown"):
		direction += Vector2(0, 1 * playerSpeed) # Some reason making y = 1 moves the player down
	
	elif Input.is_action_pressed("MoveUp"):
		direction += Vector2(0, -1 * playerSpeed) # Move the player up
	
	# Basically if the player is moving, normalize the direction vector to prevent faster diagonal movement
	if direction.length() > 0:
		direction = direction.normalized() * playerSpeed
	
