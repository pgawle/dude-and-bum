@tool
extends PopochiuCharacter
# You can use E.queue([]) to trigger a sequence of events.
# Use await E.queue([]) if you want to pause the execution of
# the function until the sequence of events finishes.

const Data := preload('character_bum_state.gd')

var state: Data = load("res://game/characters/bum/character_bum.tres")


#region Virtual ####################################################################################
# When the room in which this node is located finishes being added to the tree
func _on_room_set() -> void:
	pass


# When the node is clicked
func _on_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	#E.command_fallback()
	# For example, you can make the player character walk to this character, gaze at it, and then
	# say something:
	await C.player.walk_to_clicked()
	await C.player.face_clicked()
	D.BumDialog.start()
#	await C.player.say("Hi!")


func _on_double_click() -> void:
	# Replace the call to E.command_fallback() with your code.
	E.command_fallback()
	# For example, you could make the player instantly do something instead of walking there first


# When the node is right clicked
func _on_right_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()
	# For example, you can make the player character gaze at this character and then say something:
#	await C.player.face_clicked()
#	await C.player.say("Is someone...")


# When the node is middle clicked
func _on_middle_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()


# When the node is clicked and there is an inventory item selected
func _on_item_used(_item: PopochiuInventoryItem) -> void:
	# Replace the call to E.command_fallback() to implement your code.
	await C.player.walk_to_clicked()
	if _item == I.Can:
		await C.player.say("I've got something for you.")
		
		await C.Bum.say("If it's another question about the stick, I swear...")
		
		await C.player.say("Relax. It's a can. Thought it might interest you.")
		I.Can.remove()
		await C.Bum.say("Let me look at it.")
		await C.Bum.say("Huh. It's used. Dented. Scratched up.")
		await C.Bum.say("Most people would walk right past it.")
		
		await C.player.say("So... it's worthless?")
		
		await C.Bum.say("Worthless? No.")
		await C.Bum.say("See that faint ring around the top? Production style they stopped using years ago.")
		await C.Bum.say("The slight bend on the left, that's old machinery, not cheap modern stamping.")
		
		await C.player.say("You really see all that?")
		
		
		await C.Bum.say("Some folks read books. I read metal.")
		await C.Bum.say("This one's is real vintage quality.")
		
		await C.player.say("Glad it's in good hands then.")
		
		await C.Bum.say("It'll go well with the rest of the collection.")
		
		await C.player.say("So.. about the stick...")
		
		await C.Bum.say("Alright.")
		await C.Bum.say("You didn't have to, but you gave me something that actually means something to me.")
		await C.Bum.say("I can give something back.")
		
		await C.player.say("Are you sure?")
		await C.Bum.say("Yeah. Just don't tell anyone I was nice today.")
		await C.Bum.say("...and don't snap it in half. It's still a good stick.")
	#E.command_fallback()
	# For example, you can make the player character say something when the Key item is used in this
	# character. Note that you have to change the name of the `_item` parameter to `item`.
#	if item == I.Key:
#		await C.player.say("I don't want to give up my key")


# Use it to play the idle animation for the character
func _play_idle() -> void:
	super()


# Use it to play the walk animation for the character
# target_pos can be used to know the movement direction
func _play_walk(target_pos: Vector2) -> void:
	super(target_pos)


# Use it to play the talk animation for the character
func _play_talk() -> void:
	super()


# Use it to play the grab animation for the character
func _play_grab() -> void:
	super()


# Called when the character stops moving
func _on_move_ended() -> void:
	pass


#endregion

#region Public #####################################################################################
# You can add here functions triggered by the GUI commands. For example, if your GUI has a command
# for look_at, you could have the function:
#func on_look_at() -> void:
	#pass


#endregion
