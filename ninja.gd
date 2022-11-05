extends KinematicBody2D

export var posicionIncial = Vector2(50,520)
export (int) var ve1_correr = 100
export (int) var vel_salto = -400
export (int) var gravedad = 1400
export var vidas = 3
var velocidad = Vector2()
var saltando = false

func get_imput():
	velocidad.x = 0
	var derecha = Input.is_action_pressed("ui_right")
	var izquierda = Input.is_action_pressed('ui_left')
	var salto =  Input.is_action_just_pressed("ui_up")

	if salto and is_on_floor():
		saltando = true
		velocidad.y = vel_salto
	elif derecha:
		velocidad.x +=  ve1_correr
		$AnimatedSprite.flip_h = velocidad.x < 0
		$AnimatedSprite.animation = 'Correr'
	elif izquierda:
		velocidad.x -= ve1_correr
		$AnimatedSprite.flip_h = velocidad.x < 0
		$AnimatedSprite.animation = 'Correr'
	else:
		$AnimatedSprite.animation = 'Inactivo'

func _physics_process(delta):
	get_imput()
	velocidad.y += gravedad * delta
	if saltando and is_on_floor():
		saltando = false
	velocidad = move_and_slide(velocidad, Vector2(0, -1))

func _ready():
	 position = posicionIncial


func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		_ready()
