extends Node2D

var hearts = preload("res://scenes/heart.tscn")

func _on_heart_timer_timeout():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	$Path2D/PathFollow2D.progress = rng.randi_range(0, 1048)
	var heart_instance = hearts.instantiate()
	
	heart_instance.position = $Path2D/PathFollow2D/Marker2D.global_position
	add_child(heart_instance)


func _on_game_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	
	
func _ready():
	$GameMusic.play()
