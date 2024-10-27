extends Node3D

@onready var body = $StaticBody3D
@onready var player = get_tree().get_first_node_in_group('player')
@onready var camera : Node3D = player.camera
@onready var view_marker : Marker3D = $Marker3D

var return_pos = null

func enter_view():
	return_pos = camera.global_position
	#camera.global_position = view_marker.global_position
	camera.global_transform = view_marker.global_transform
	prints("locking the fuck in", player, camera, view_marker, return_pos)
	pass

func exit_view():
	##return_pos
	pass

#not necessary?
func on_look():
	print("owo what's this?")
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	body.connect("interacted", Callable(self, "enter_view"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
