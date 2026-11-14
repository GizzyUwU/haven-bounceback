extends CharacterBody2D


const LAUNCHSPEED = 1500
const BOUNCE_STRENGTH = 1
var angle
var checkpoint = 0

func freeze() -> void:
	self.set_physics_process(false) 
	self.set_process_input(false)
	self.set_process_unhandled_input(false)

func unfreeze() -> void:
	self.set_physics_process(true) 
	self.set_process_input(true)
	self.set_process_unhandled_input(true)

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal()) * BOUNCE_STRENGTH
		
	
	move_and_slide()

func _process(delta: float) -> void:
	$"../VelocityLabel".text = "Velocity X " + str(velocity.x) + ", Velocity Y " + str(velocity.y)

func _ready():
	angle = deg_to_rad(randf_range(-50, 50))
	self.rotation = angle
