extends CanvasLayer

var is_paused = false
@onready var settings_container = $SettingsContainer
func _input(event):
	if event.is_action_pressed("Pause"):
		toggle_pause()


func toggle_pause():
	is_paused = !is_paused
	visible = is_paused
	get_tree().paused = is_paused
	
	if not is_paused:  
		settings_container.visible = false


func _on_settings_pressed() -> void:
	%SettingsContainer.visible = true


func _on_resume_pressed() -> void:
	toggle_pause()


func _on_quit_pressed() -> void:
	get_tree().quit()
