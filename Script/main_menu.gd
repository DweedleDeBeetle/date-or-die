extends Node2D
var music_time = 59.9

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	music_time-=delta
	if music_time <= 0:
		$music.play()
		music_time = 59.9
	pass
