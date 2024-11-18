extends CharacterBody2D

var velocidad_impulso=200
var speed_increment = 10           # Incremento de velocidad cada vez que pasa el tiempo
var time_interval = 5              # Tiempo (en segundos) para aumentar la velocidad
var timer = 0                      # Temporizador para aumentar la velocidad

func _ready():
	if randi()% 2== 0:
		velocity.x += velocidad_impulso
		
	else:
		velocity.x -= velocidad_impulso
		
	if randi()% 2== 0:
		velocity.y += velocidad_impulso
		
	else:
		velocity.y -= velocidad_impulso
		
func _physics_process(delta): 
	position += velocity * delta
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
		
	
	
	timer += delta

	# Si el tiempo ha pasado el intervalo, aumentamos la velocidad
	if timer >= time_interval:
		velocity *= 1 + speed_increment / 100.0  # Aumentamos la velocidad por un porcentaje
		timer = 0  # Reseteamos el temporizador
		
