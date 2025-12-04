@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCDude := preload("res://game/characters/dude/character_dude.gd")
const PCBum := preload("res://game/characters/bum/character_bum.gd")
# ---- classes

# nodes ----
var Dude: PCDude : get = get_Dude
var Bum: PCBum : get = get_Bum
# ---- nodes

# functions ----
func get_Dude() -> PCDude: return get_runtime_character("Dude")
func get_Bum() -> PCBum: return get_runtime_character("Bum")
# ---- functions

