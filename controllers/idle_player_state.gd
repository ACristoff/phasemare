class_name IdlePlayerState

extends State

#@export var player
#
#func update(delta):
	#if Global.player.velocity.length() > 0.0:
		#transition.emit("WalkingPlayerState")
	#pass
