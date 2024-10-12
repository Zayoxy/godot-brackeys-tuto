extends Area2D

# "$" here is a PATH, it's a way to reference a node from the current node
@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("Player died")
	
	# Time will flow at half speed
	Engine.time_scale = 0.5
	
	# Remove player physics so he falls off the map
	body.get_node("CollisionShape2D").queue_free()
	
	# Start the timer
	timer.start()

# Triggered when timer runout --> timeout
func _on_timer_timeout() -> void:
	# Reset time flow
	Engine.time_scale = 1
	
	# Player died so --> Reload the scene
	get_tree().reload_current_scene()
