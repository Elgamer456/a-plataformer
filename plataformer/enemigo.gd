extends KinematicBody2D

var velocity = Vector2 (0,0)
var goforward = true

func _physics_process(delta):
	if is_on_wall():
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		goforward = not goforward
	
	if goforward == true:
		velocity.x = 15
	else:
		velocity.x = -15
	velocity = move_and_slide(velocity, Vector2.UP)
