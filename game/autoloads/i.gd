@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIICan := preload("res://game/inventory_items/can/inventory_item_can.gd")
const PIIStick := preload("res://game/inventory_items/stick/inventory_item_stick.gd")
const PIIApple := preload("res://game/inventory_items/apple/inventory_item_apple.gd")
# ---- classes

# nodes ----
var Can: PIICan : get = get_Can
var Stick: PIIStick : get = get_Stick
var Apple: PIIApple : get = get_Apple
# ---- nodes

# functions ----
func get_Can() -> PIICan: return get_item_instance("Can")
func get_Stick() -> PIIStick: return get_item_instance("Stick")
func get_Apple() -> PIIApple: return get_item_instance("Apple")
# ---- functions

