extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	if not (body is CharacterBody2D):
		return
	get_tree().current_scene.get_node("GameOverUi").show_game_over()
	get_tree().current_scene.get_node("CoinCounterUI").save_best()
	%HurtSound.play()
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
