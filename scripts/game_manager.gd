extends Node

var score = 0

@onready var coins_label: Label = $CoinsLabel

func add_point():
	score += 1
	print("Score updated: " + str(score))
	coins_label.text = "Coins collected: " + str(score)
