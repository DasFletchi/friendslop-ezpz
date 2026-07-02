extends Node2D
@onready var h_box_container: HBoxContainer = $"2nd Screen/HBoxContainer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	pass # Replace with function body.


func _on_multiplayer_button_pressed() -> void:
	h_box_container.show()
