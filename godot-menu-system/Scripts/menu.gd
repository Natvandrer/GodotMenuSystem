extends Control

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/game.tscn")    #The file to load

func _on_option_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/options_menu.tscn")    #The file to load

func _on_exit_pressed() -> void:
	get_tree().quit() # Exitter applicationen.
