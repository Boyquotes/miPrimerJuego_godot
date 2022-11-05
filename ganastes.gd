extends CanvasLayer

var musica_fondo = preload("res://sonido/1x level win.ogg")

func _on_Button_pressed():
	Globalf.vidas = 3
	Globalf.manzana = 0
	get_tree().change_scene("res://niveles/nivel1.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://niveles/pantalla_inicio.tscn")
	pass # Replace with function body.


func _ready():
	MusicaDeFondo.musicafondo(musica_fondo)
	
