extends Node2D
var now = 0
var talking = 0
var index = Global.get('index')
var index1 = Global.get('index1')

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	talking = int($Typing/talking.text)
	now = int($Typing/scene.text)
	
	if talking % 2 ==0:
		$RC/RCFace.play("open")
	if talking % 2 ==1:
		$RC/RCFace.play("closed")
	
	if now == 0:
		$AnimatedSprite2D.play("union")
	if now == 1:
		$AnimatedSprite2D.play("aquarium")
	if now == 2:
		$AnimatedSprite2D.play("arcade")
	
	if index == 0:
		$RC/RCSkin.play("RC1")
	elif index == 1:
		$RC/RCSkin.play("RC2")
	elif index == 2:
		$RC/RCSkin.play("RC3")
	elif index == 3:
		$RC/RCSkin.play("RC4")
		
	if index1 == 0:
		$RC/RCHair.play("Cassidy")
	elif index1 == 1:
		$RC/RCHair.play("Elli")
	elif index1 == 2:
		$RC/RCHair.play("Jack")
	elif index1 == 3:
		$RC/RCHair.play("Renee")
	pass
