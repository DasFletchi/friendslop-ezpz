extends Node3D

@onready var temp_mp_menu: PanelContainer = $"Mutliplayer temp menu/tempMPMenu"
@onready var adress_entry: LineEdit = $"Mutliplayer temp menu/tempMPMenu/VBoxContainer/AdressEntry"

#oh frick jetzt kommt die erste network scheisse
const PORT = 9999 #lol
var enet_peer = ENetMultiplayerPeer.new() #erstellt ein multiplayer peer element und gibt einen zeiger drauf bevor es ohne die var in den abyss verschwindet


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func _on_host_pressed() -> void:
	temp_mp_menu.hide()
	
	enet_peer.create_server(PORT) # erstellt einen ENet-Server auf diesem Port.
	# Dieser Spieler wird dadurch zum Host.
	# In einem Host-Client-P2P-System ist jeder grundsätzlich ein Peer,
	# aber der Host ist der besondere Peer, der den Server betreibt
	# und normalerweise die Autorität über den Spielzustand hat.
	# Seine Peer-ID ist meistens 1.

func _on_join_pressed() -> void:
	pass
