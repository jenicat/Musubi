extends Node2D

var game_length_days = 0

func _ready():
	self.name = "Homescreen"
	game_length_days = 0
	

func _load_story():
	var story = load("2Storytelling.tscn").instance()
	story.name = "Storytelling"
	add_child(story)

func _load_purchasing():
	var purchasing = load("4Purchasing.tscn").instance()
	purchasing.name = "Purchasing"
	add_child(purchasing)

func _on_FiveButton_pressed():
	game_length_days = 5
	_load_purchasing()

func _on_TenButton_pressed():
	game_length_days = 10
	_load_purchasing()	
	
func _on_TwentyButton_pressed():
	game_length_days = 20
	_load_purchasing()	
	
func _on_start_game_button_pressed():
	_load_story()
	remove_child(self)

	
	
