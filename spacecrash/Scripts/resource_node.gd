extends Node2D

class_name ResourceNode

signal collected(res: Consts.RESOURCES, amount: int)

@export var required_time: float = 0
var time_spend_inside: float = 0
var is_inside: bool = false
var blocked: bool = false
@export var resource: Consts.RESOURCES
@export var amount_per_collection: int

func _process(delta: float) -> void:
	if is_inside:
		time_spend_inside += delta
	
	if time_spend_inside >= required_time:
		time_spend_inside = 0
		blocked = true
		collected.emit(resource, amount_per_collection)
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
