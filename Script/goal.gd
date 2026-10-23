extends Area2D

var triggered := false

func _on_body_entered(body) -> void:
	if triggered or not (body is CharacterBody2D):
		return
	triggered = true
	body.set_physics_process(false)
	
	var counter = get_tree().current_scene.get_node("CoinCounterUI")
	counter.save_best()
	get_tree().current_scene.get_node("WinUI").show_win(counter.coin_count)
	
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")
