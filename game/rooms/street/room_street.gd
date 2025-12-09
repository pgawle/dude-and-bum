@tool
extends PopochiuRoom

const Data := preload('room_street_state.gd')

var state: Data = load("res://game/rooms/street/room_street.tres")


#region Virtual ####################################################################################
# What happens when Popochiu loads the room. At this point the room is in the
# tree but it is not visible
func _on_room_entered() -> void:
	#_give_all_items()
	await C.player.face_left()
	pass


# What happens when the room changing transition finishes. At this point the room
# is visible.
func _on_room_transition_finished() -> void:
	
	# You can use await E.queue([]) to execute a sequence of instructions
	pass


# What happens before Popochiu unloads the room.
# At this point, the screen is black, processing is disabled and all characters
# have been removed from the $Characters node.
func _on_room_exited() -> void:
	pass


#endregion

func _give_all_items() -> void:
	I.Apple.add()
	I.Stick.add()
	I.Can.add()
