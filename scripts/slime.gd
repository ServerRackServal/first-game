extends Node2D

#The speed of the slime
const SPEED = 60

# Makes slime go to the right
var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# If the ray cast variable hits another object,
	if ray_cast_right.is_colliding():
		# Changes direction to left
		direction = -1
		# Changes direction sprite is facing to left
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		# Changes direction to back to right
		direction = 1
		# Changes direction sprite is facing back to right
		animated_sprite.flip_h = false
	
	# Frame rate varies. Delta becomes bigger or smaller depending on
	# how long it's been since the last frame, allowing us to compensate for
	# frame rate variation. If speed is involved, almost always multiply
	# by delta. Explanation at 46:00 in tutorial.
	
	position.x += direction * SPEED * delta
