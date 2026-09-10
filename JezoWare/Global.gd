extends Node

var minigames_done = 0
var hearts = 3

func _process(delta: float) -> void:
	if hearts <= 0:
		get_tree().change_scene_to_file("res://scenes/lost_screen.tscn")
		set_process(false)
