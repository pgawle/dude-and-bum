@tool
extends "res://addons/popochiu/engine/interfaces/i_dialog.gd"

# classes ----
const PDBumDialog := preload("res://game/dialogs/bum_dialog/dialog_bum_dialog.gd")
# ---- classes

# nodes ----
var BumDialog: PDBumDialog : get = get_BumDialog
# ---- nodes

# functions ----
func get_BumDialog() -> PDBumDialog: return get_instance("BumDialog")
# ---- functions

