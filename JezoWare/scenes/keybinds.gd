extends Node2D


func _on_okay_pressed() -> void:
	SceneTransition.change_scene_to_file("res://scenes/title_screen.tscn")
