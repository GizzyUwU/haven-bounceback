extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = randf_range(-1000, 1000)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if $"../Ball".checkpoint == 0:
			body.freeze()
			self.visible = false
			$"../actualwin".visible = true
			print("p1")
		$"../Ball".checkpoint = 1
