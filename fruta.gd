extends Area2D



func _on_fruta_1_body_entered(body):
	Globalf.refresh_manzana(1)
	$"sonido_manzana".playing = true
	queue_free()
	
