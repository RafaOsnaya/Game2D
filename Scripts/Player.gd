extends CharacterBody2D



var velocityPlayer = 100
var jump = 200
var gravity = 400

func _physics_process(delta):
	
	velocity.y += gravity*delta
	
	
	if Input.is_action_pressed("right"):
		velocity.x = velocityPlayer
	elif Input.is_action_pressed("left"):
		velocity.x = -velocityPlayer
	else:
		velocity.x = 0
		
	if is_on_floor():
		if Input.is_action_just_pressed("up"):
			velocity.y = -jump
		
	move_and_slide()
