extends Node2D

var Puntaje_p1 = 0
var Puntaje_p2 = 0
@export var player_1: PackedScene
const CENTER = Vector2(576,320)

	


func _on_pared_derecha_body_entered(body):
	if body.is_in_group("pelota"):
		Puntaje_p1 +=1
		$"Puntaje p1".text = str(Puntaje_p1)
		reset()



func _on_pared_izquierda_body_entered(body):
	if body.is_in_group("pelota"):
		Puntaje_p2 +=1
		$"Puntaje p2".text = str(Puntaje_p2)
		reset()

func reset():
	$pelota.position= CENTER
	$pelota.velocity= Vector2(200,200)
	
	


func _on_ganaste_timeout():
	print("hola")
	if Puntaje_p1 > Puntaje_p2 and Puntaje_p1 >= 5:
		get_tree().change_scene_to_file("res://ESCENAS/ganador.tscn")
	
	elif Puntaje_p2 > Puntaje_p1 and Puntaje_p2 >= 5:
		get_tree().change_scene_to_file("res://ESCENAS/ganador 2.tscn")
		
	
	
