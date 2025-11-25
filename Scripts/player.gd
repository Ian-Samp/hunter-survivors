extends CharacterBody2D

# Variáveis do Player
@export var speed = 300

# Função que roda a física do Player 60 vezes/segundo
func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()

# Função que cuida dos inputs do teclado
func get_input():
	# Verifica a direção
	var input_dir = Input.get_vector("left", "right", "up", "down")
	# Movimento = direção * rapidez
	velocity = input_dir * speed
