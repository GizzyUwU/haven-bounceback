extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	var ball = $"../../Ball"
	var velocity = ball.LAUNCHSPEED
	var angle = ball.angle
	ball.unfreeze()
	ball.velocity += Vector2.RIGHT.rotated(ball.angle - PI/2) * ball.LAUNCHSPEED
