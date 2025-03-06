extends Control

func _ready() -> void:
	$/root/MultiplayerConnector.heard_move.connect(_on_move_heard)
	$/root/MultiplayerConnector.client_has_left.connect(_on_client_left)

func _on_send_button_pressed() -> void:
	$/root/MultiplayerConnector.send_move(%MoveLine.text) # Replace with function body.
	%MoveLine.text = ""
	
func _on_move_heard(move:String) -> void:
	%MoveRegister.text += move
	%MoveRegister.text += "\n"

func _on_client_left() -> void:
	get_tree().change_scene_to_file("res://root_screen.tscn")
