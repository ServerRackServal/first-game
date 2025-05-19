extends Area2D

@onready var timer: Timer = $Timer

# When the player character passes the world boundary,
func _on_body_entered(body: Node2D) -> void:
	# Console prints what's in quotes
	print("ded, oops")
	# Slows down time when you die.
	Engine.time_scale = 0.5
	# Removes collision area, forcing the player to fall
	body.get_node("CollisionShape2D").queue_free()
	# Timer starts
	timer.start()

# When the timer runs out,
func _on_timer_timeout() -> void:
	# Resets time scale back to 1 when scene restarts
	Engine.time_scale = 1.0
	# Reloads current scene
	get_tree().reload_current_scene()
