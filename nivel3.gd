extends Node2D



func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		Globalf.vidas -= 1
		$"daño".playing = true
	
	if Globalf.vidas <= 0:
		get_tree().change_scene("res://niveles/muerte.tscn")
		
		



func _on_fruta_moneda_1_body_entered(body):
	$"sonido_manzana".playing = true
