extends CharacterBody2D


const ROTSPEED = 0.1
const LAUNCHSPEED = 2000
var angle

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	move_and_slide()

func _ready():
	angle = deg_to_rad(randf_range(-50, 50))
	self.rotation = angle
