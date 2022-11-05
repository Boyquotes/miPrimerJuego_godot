extends Node

var manzana = 0
var vidas = 3
var _sinvidas = 0


signal manzana_chanchaged(manzana)

func refresh_manzana(var delta):
	manzana+=delta
	



func _sinvidas():
	if(vidas == 0):
		get_tree().change_scene("res://muerte.tscn")
		Globalf.manzana = 500
