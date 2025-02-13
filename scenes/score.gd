extends CanvasLayer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ScoreLabel.text = "Score: " + str(Global.score)
