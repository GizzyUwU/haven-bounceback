extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	print("meow")
	if body is CharacterBody2D:
		print("is character")
		if $"../Ball".checkpoint == 1:
			print("checkpoint goog")
			body.freeze()
			self.visible = false
			print("win")
			$"../winscreen".visible = true
			$"../HelpLabel".text = "Restart."
			$"../Ball".checkpoint = 2
