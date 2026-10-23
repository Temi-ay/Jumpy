extends Node2D

const SPEED := 40.0
@export var patrol_distance := 110.0

var direction := 1
var start_x := 0.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	start_x = position.x

func _process(delta: float) -> void:
	position.x += direction * SPEED * delta
	if position.x > start_x + patrol_distance:
		direction = -1
		animated_sprite.flip_h = true
	elif position.x < start_x:
		direction = 1
		animated_sprite.flip_h = false
