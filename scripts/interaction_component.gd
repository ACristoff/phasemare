class_name InteractionComponent extends Node

var parent

# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()
	connect_parent()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func in_range():
	#print(parent)
	pass

func not_in_range():
	#print("not in focus")
	pass

func on_interact():
	#print(parent.name)
	pass

func connect_parent():
	parent.add_user_signal("focused")
	parent.add_user_signal("unfocused")
	parent.add_user_signal("interacted")
	parent.connect("focused", Callable(self, "in_range"))
	parent.connect("unfocused", Callable(self, "not_in_range"))
	parent.connect("interacted", Callable(self, "on_interact"))
	pass
