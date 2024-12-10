extends CanvasLayer

@onready var label: Label = $Control/Label

var oxygen = 100

func decrease_oxygen():
	while oxygen > 0:
		label.text = "Oxygen: " + str(oxygen) + "%"
		oxygen -= 1
		await get_tree().create_timer(1).timeout

func _ready():
	decrease_oxygen()
