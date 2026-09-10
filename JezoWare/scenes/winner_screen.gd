extends Node2D

@onready var sfx_winnerbutton: AudioStreamPlayer = $sfx_winnerbutton

func _on_okay_pressed() -> void:
	sfx_winnerbutton.play()
	SceneTransition.change_scene_to_file("res://scenes/title_screen.tscn")
