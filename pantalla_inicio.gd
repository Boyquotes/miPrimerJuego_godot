extends CanvasLayer

var musica_fondo = preload("res://sonido/pantalla_inicio.wav")

func _on_Button_pressed():
	Globalf.vidas = 3
	Globalf.manzana = 0
	get_tree().change_scene("res://niveles/nivel1.tscn")


func _ready():
	MusicaDeFondo.musicafondo(musica_fondo)

