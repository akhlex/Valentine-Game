extends Sprite2D



func _on_basket_area_area_entered(area):
	if area.name == "HeartArea":
		Global.score += 1
		area.get_parent().queue_free()
