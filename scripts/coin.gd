extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	# Log the coin pickup
	# print("+1 coin")
	
	game_manager.add_point()
	
	# Delete the node at the end of the frame
	# queue_free()
	
	# Play pickup sound and then call queue_free()
	animation_player.play("pickup")
