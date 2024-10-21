extends Node2D
var rizz = Global.get('rizz')

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text += str(rizz)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
