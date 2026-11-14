extends CharacterBody2D


const SPEED = 0.1

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx := Input.get_axis("left", "right")
	if directionx == 1.0:
		velocity.x = directionx * SPEED
		$Pivot.rotate(SPEED)
	elif directionx == -1.0:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$Pivot.rotate(-0.1)

	move_and_slide()

func _ready():
	var angle = randf_range(2, 4)
	$Pivot.rotation = angle
