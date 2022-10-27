extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _load_length():
	var length = load("res://3Length.tscn").instance()
	length.name = "Load length scene"
	add_child(length)
	remove_child(self)

func _on_LetsgoButton_pressed():
	_load_length()
	
