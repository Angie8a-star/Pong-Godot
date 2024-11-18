extends CharacterBody2D


const SPEED = 300.0


var velocidad_impulso=30
#var velocidad= Vector2()


func _physics_process(delta):
	
	
	# Add the gravity.
	if (Input.is_action_pressed("p1_arriba")):
		velocity.y -=velocidad_impulso
		velocity.x = 0
		position.x= 0
		
	elif (Input.is_action_pressed("p1_abajo")):
		velocity.y +=velocidad_impulso
		velocity.x = 0
		position.x= 0
		
	else:
		velocity.y=0
		velocity.x= 0
		position.x= 0
		
	move_and_slide()
