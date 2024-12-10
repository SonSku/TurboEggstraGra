extends Node2D

@export var required_time: float = 0
@export var resource: Consts.RESOURCES
@export var amount_per_collection: int
var time_spend_inside: float = 0
var is_inside: bool = false
var blocked: bool = false


func _ready() -> void:
	print("Resource ready")

func _process(delta: float) -> void:
	if is_inside:
		time_spend_inside += delta
	
	if time_spend_inside >= required_time:
		time_spend_inside = 0
		blocked = true
		SignalManager.emit_collected_resource(resource, amount_per_collection)
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	is_inside = true
	print("Entered resource")
	pass # Replace with function body.
	
func _on_area_2d_body_exit(body: Node2D) -> void:
	is_inside = false
	print("Exited resource")
	pass # Replace with function body.
	
