@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCDude := preload("res://game/characters/dude/character_dude.gd")
# ---- classes

# nodes ----
var Dude: PCDude : get = get_Dude
# ---- nodes

# functions ----
func get_Dude() -> PCDude: return get_runtime_character("Dude")
# ---- functions

