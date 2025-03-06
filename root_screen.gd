extends Control



func _on_host_button_pressed() -> void:
	get_tree().change_scene_to_file("res://host_screen.tscn") # Replace with function body.


func _on_join_button_pressed() -> void:
	get_tree().change_scene_to_file("res://join_screen.tscn")
