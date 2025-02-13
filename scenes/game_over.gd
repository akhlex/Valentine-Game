extends Control


func _process(delta):
	$EndScoreLabel.text = "Your Score: " + str(Global.score)


func _on_play_again_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	
	
func _on_quit_button_pressed():
	get_tree().quit()
