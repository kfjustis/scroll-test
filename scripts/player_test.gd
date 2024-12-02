extends CharacterBody2D

const SPEED_FACTOR = 1.0
const SPEED = 96.0 * SPEED_FACTOR

func _physics_process(_delta: float) -> void:
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")

	var _is_moving = direction_x != 0.0 or direction_y != 0.0
	var move_vec: Vector2 = Vector2(direction_x, direction_y).normalized()
	velocity = move_vec * SPEED
	move_and_slide()
