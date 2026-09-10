extends Node2D



@onready var sfx_hoverstart: AudioStreamPlayer = $sfx_hoverstart
@onready var sfx_hoverkeybinds: AudioStreamPlayer = $sfx_hoverkeybinds
@onready var sfx_hoverquit: AudioStreamPlayer = $sfx_hoverquit
@onready var sfx_clickstart: AudioStreamPlayer = $sfx_clickstart
@onready var sfx_clickkeybinds: AudioStreamPlayer = $sfx_clickkeybinds
@onready var sfx_clickquit: AudioStreamPlayer = $sfx_clickquit




func _on_start_pressed() -> void:
	sfx_clickstart.play()
	SceneTransition.change_scene_to_file("res://scenes/timer_screen.tscn")

func _on_keybinds_pressed() -> void:
	sfx_clickkeybinds.play()
	await get_tree().create_timer(0.5).timeout
	SceneTransition.change_scene_to_file("res://scenes/keybinds.tscn")

func _on_quit_pressed() -> void:
	sfx_clickquit.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()


func _on_start_mouse_entered() -> void:
	sfx_hoverstart.play()


func _on_keybinds_mouse_entered() -> void:
	sfx_hoverkeybinds.play()


func _on_quit_mouse_entered() -> void:
	sfx_hoverquit.play()
