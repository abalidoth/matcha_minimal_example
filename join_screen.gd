extends Control

func _ready() -> void:
	$/root/MultiplayerConnector.client_has_joined.connect(connection_established)
	$/root/MultiplayerConnector.client_has_left.connect(connection_broken)


func _on_join_button_pressed() -> void:
	$/root/MultiplayerConnector.connect_to_server(%RoomID.text)


func _on_room_id_text_submitted(new_text: String) -> void:
	$/root/MultiplayerConnector.connect_to_server(%RoomID.text)

func _on_room_id_text_changed(new_text: String) -> void:
	%JoinButton.disabled = (new_text == "")
	
func connection_established():
	get_tree().change_scene_to_file("res://main_scene.tscn")
	
func connection_broken():
	pass


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://root_screen.tscn")
