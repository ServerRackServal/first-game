extends Node

var score = 0

@onready var score_label: Label = $CanvasLayer/ScoreLabel

func add_point():
	score += 1
	# Updates score on screen when picking up coins.
	score_label.text = "Score: " + str(score)
