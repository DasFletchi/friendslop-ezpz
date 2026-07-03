extends Node2D

# Default Steam variables

#Steam variables
var OWNED = false
var ONLINE = false
var STEAM_ID = 0
var STEAM_NAME = ""
#Lobby variables
var DATA
var LOBBY_ID = 0
var LOBBY_MEMBERS = []
var LOBBY_INVITE_ARG = false

func _ready() -> void:
	var INIT = Steam.steam_init()
	if INIT['status'] != 1:
		print("Steam initialization failed: " + str(INIT['verbal']) + " Shutting down...")
		get_tree().quit()

ONLINE = Steam.loggedOn()
STEAM_ID = Steam.get_steam_id()
STEAM_NAME = Steam.get_steam_persona_name()
OWNED = Steam.is_subscribed()l #sounds a bit weird but the is_owned check doesnt allow free week ends/Steam Family, this one allows that. However im all for piracy so i wont check if the game is owned entertainment should be available to every1 even if they cant afford it.

#Steam DRM check
