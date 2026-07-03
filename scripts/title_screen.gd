extends Node2D
@onready var h_box_container: HBoxContainer = $"2nd Screen/HBoxContainer"
@onready var singleplayer_button: Button = $VBoxContainer/Singleplayer
@onready var multiplayer_button: Button = $VBoxContainer/Multiplayer


func _on_multiplayer_button_pressed() -> void:
	h_box_container.show()
	multiplayer_button.hide()

func _on_singleplayer_button_pressed() -> void:
	singleplayer_button.hide()


func _on_enet_pressed() -> void:
	Network.set_network_type(NetworkEnet)

func _on_steam_pressed() -> void:
	# Steam-Code nur ausführen, wenn steam_lobby_list existiert
	if get_node_or_null("steam_lobby_list"):
		Network.set_network_type(NetworkSteam)
		for child in $steam_lobby_list.get_children():
			child.queue_free()
		Network.active_network.list_lobbies()
	
	else:
		print("Steam-Lobby-UI nicht gefunden. Überspringe Steam-Initialisierung.")
