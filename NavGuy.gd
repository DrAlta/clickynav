extends KinematicBody

onready var nav = get_parent()

var path = []
var path_node = 0

var speed = 10

func _physics_process(delta):
	if path_node < path.size():
		var direction :Vector3= (path[path_node] - global_transform.origin)
		if direction.length() < 1:
			path_node += 1
		else:
			move_and_slide(direction.normalized() * speed, Vector3.UP)

func move_to(target_pos:Vector3):
	path = nav.get_simple_path(global_transform.origin, target_pos)
	path_node = 0

func _on_Area_input_event(camera: Node, event: InputEvent, position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed == true:
		move_to(position)
