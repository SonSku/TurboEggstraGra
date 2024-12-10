extends Node

signal collected_resource(resource: Consts.RESOURCES, amount: int)

func emit_collected_resource(resource: Consts.RESOURCES, amount: int):
	emit_signal("collected_resource", resource, amount)
