extends Node3D

@onready var body = $StaticBody3D
@onready var player = get_tree().get_first_node_in_group('player')
@onready var camera = player.camera
@onready var view_marker = $Marker3D

func lock_in():
	prints("locking the fuck in", player, camera)
	pass


#not necessary?
func on_look():
	print("owo what's this?")
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	body.connect("interacted", Callable(self, "lock_in"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
