extends Sprite2D



func _on_basket_area_area_entered(area):
	if area.name == "HeartArea":
		area.get_parent().queue_free()
