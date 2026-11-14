extends Sprite2D
var toClone = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self_modulate.a = 0.5
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = get_global_mouse_position()
	if Input.is_action_just_released("click") && !get_viewport().gui_get_hovered_control():
		print("a")
		var clone
		if toClone == "block" || !toClone:
			clone = $"../block".duplicate()
		elif toClone == "wedge":
			clone = $"../wedge".duplicate()
		get_parent().add_child(clone)
		clone.global_position = get_global_mouse_position()
