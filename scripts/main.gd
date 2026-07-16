extends Node3D

@onready var temp_mp_menu: PanelContainer = $"Mutliplayer temp menu/tempMPMenu"


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func _on_host_pressed() -> void:
	pass # Replace with function body.


func _on_join_pressed() -> void:
	pass # Replace with function body.
