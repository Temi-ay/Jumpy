extends CanvasLayer

static var has_shown := false

func _ready() -> void:
	if has_shown:
		visible = false
	else:
		has_shown = true

func _on_got_it_pressed() -> void:
	visible = false
