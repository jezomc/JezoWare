extends Node2D

@onready var sfx_okaybutton: AudioStreamPlayer = $sfx_okaybutton

func _on_okay_pressed() -> void:
	sfx_okaybutton.play()
	SceneTransition.change_scene_to_file("res://scenes/title_screen.tscn")
