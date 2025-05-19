extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# When the character's body enters the specified area
# (Player is on layer 2, coin is on mask 2.)
func _on_body_entered(_body: Node2D) -> void:
	# Prints message in console
	game_manager.add_point()
	# Removes coin from existance
	animation_player.play("pick_up")
