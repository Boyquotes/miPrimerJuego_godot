extends Node2D
 
var musica_fondo = preload("res://sonido/juego.mp3")

func _on_obstaculos_area_entered(area):
	
	if area.is_in_group("player"):
		Globalf.vidas -= 1
		$"daño".playing = true
	
	if Globalf.vidas <= 0:
		get_tree().change_scene("res://niveles/muerte.tscn")
		
		

func _on_fruta_1_body_entered(body):
	$"sonido_manzana".playing = true
	

func _ready():
	MusicaDeFondo.musicafondo(musica_fondo)
