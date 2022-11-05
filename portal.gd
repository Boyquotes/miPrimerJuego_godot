extends Area2D

export (String) var escena




func _on_portal_body_entered(body):
	if body.name == "ninja":
		get_tree().change_scene("res://"+escena+".tscn")
		Globalf.vidas += 2
	pass # Replace with function body.
