@tool
extends PopochiuDialog

var inital_dialog = true

#region Virtual ####################################################################################
func _on_start() -> void:
	# One can put here something to execute before showing the dialog options.
	# E.g. Make the PC to look at the character which it will talk to, walk to
	# it, and say something (or make the character say something):
	await C.player.face_clicked()
	if (inital_dialog): 
		
		
		await C.player.say("I noticed the stick you're holding.")
		await C.Bum.say("Good. It means you're paying attention.")
		await C.player.say("Could I borrow it?")
		await C.Bum.say("No.") 
		inital_dialog = false
	else:
		await C.player.say("Hello again.")
		await C.Bum.say("Yeah? What is it this time?")
	
#	await C.Popsy.say("Oh! Hi...")
	# (!) It MUST always use an await
	#await PopochiuUtils.e.get_tree().process_frame
	#region Virtual ####################################################################################
#func _on_start() -> void:
	## One can put here something to excecute before showing the dialog options.
	## E.g. Make the PC to look at the character which it will talk to, walk to
	## it, and say something (or make the character say something):
	#await C.player.face_clicked()
	#await C.player.say("Hey, Popsy!")
	## (!) It MUST always use an await
	#await E.get_tree().process_frame


func _option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
#	await D.say_selected()
	# Use match to check which option was selected and execute something for
	# each one
	match opt.id:
		"why":
			await C.player.say("Why not?")
			await C.Bum.say("Because it's mine. Simple as that.")
			opt.turn_off()
		"return":
			await C.player.say("I'd return it.")
			await C.Bum.say("That's what people say before disappearing with things.")
			opt.turn_off()
		"cart":
			await C.player.say("What's in your cart, anyway?")
			await C.Bum.say("Cans.")
			await C.player.say("Just cans?")
			await C.Bum.say("Not 'just'. Good ones.")
			await C.Bum.say("This tall silver one used to hold imported peaches. You can't get those anymore.")
			await C.Bum.say("And that green one survived a winter outside without a single dent. Tough thing.")
			await C.player.say("So you collect them?")
			await C.Bum.say("I keep the ones worth keeping.")
		"trade":
			await C.player.say("Maybe I could trade you something for it.")
			await C.Bum.say("Unless it's a better version of this stick, the answer is still no.")
		"Bye":
			await C.player.say("Alright, never mind.")
			stop()
	_show_options()


# Use this to save custom data for this PopochiuDialog when saving the game.
# The Dictionary must contain only JSON supported types: bool, int, float, String.
func _on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# This Dictionary should has the same structure you defined for the returned one in _on_save().
func _on_load(data: Dictionary) -> void:
	prints(data)


#endregion
