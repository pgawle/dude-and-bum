@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIICan := preload("res://game/inventory_items/can/inventory_item_can.gd")
# ---- classes

# nodes ----
var Can: PIICan : get = get_Can
# ---- nodes

# functions ----
func get_Can() -> PIICan: return get_item_instance("Can")
# ---- functions

