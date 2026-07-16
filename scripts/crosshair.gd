extends Node2D

func _ready() -> void:
	call_deferred("_update_position")
	get_viewport().size_changed.connect(_update_position)

func _update_position() -> void:
	position = get_viewport().get_visible_rect().size / 2.0
