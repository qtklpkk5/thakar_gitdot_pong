extends Area2D

var velocity
var wall_type = "player"

func _ready():
	position = Vector2(30, 200)

func _process(delta):
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("left_up"):
		velocity.y -= 1
	if Input.is_action_pressed("left_down"):
		velocity.y += 1
	position += 5 * velocity
	
