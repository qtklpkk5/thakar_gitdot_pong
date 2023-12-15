extends Area2D

var velocity

func rand_sign(): 
	return round(randf()) * 2 - 1

func reset_pos():
	position = Vector2(300, 200)
	velocity = Vector2(rand_sign(), rand_sign())

func _ready():
	reset_pos()

func _process(delta):
	position += 3 * velocity

func _on_area_entered(area):
	match area.wall_type:
		"bound":
			velocity.y *= -1
		"player":
			velocity.x *= -1
		"goal":
			reset_pos()
