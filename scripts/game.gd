extends Node2D


# When the scene starts,
func _ready() -> void:
	# Hides mouse when in game.
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
