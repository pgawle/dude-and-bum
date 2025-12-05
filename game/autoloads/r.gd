@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRStreet := preload("res://game/rooms/street/room_street.gd")
const PRStreet2 := preload("res://game/rooms/street_2/room_street_2.gd")
# ---- classes

# nodes ----
var Street: PRStreet : get = get_Street
var Street2: PRStreet2 : get = get_Street2
# ---- nodes

# functions ----
func get_Street() -> PRStreet: return get_runtime_room("Street")
func get_Street2() -> PRStreet2: return get_runtime_room("Street2")
# ---- functions

