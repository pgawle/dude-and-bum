@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRStreet := preload("res://game/rooms/street/room_street.gd")
# ---- classes

# nodes ----
var Street: PRStreet : get = get_Street
# ---- nodes

# functions ----
func get_Street() -> PRStreet: return get_runtime_room("Street")
# ---- functions

