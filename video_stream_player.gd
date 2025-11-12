extends VideoStreamPlayer
@onready var timer := $Timer
var index := 0
var videolist := ["res://Videos/Dusky 3D Tower Loop.ogv", 
"res://Videos/Green Random Lines Loop.ogv", 
"res://Videos/Random Pink Rings Loop.ogv", 
"res://Videos/Rough 3D Wireframe Terrain.ogv", 
"res://Videos/Twisting Gold Bands Loop.ogv"]

func _on_timer_timeout() -> void:
	index += 1
	stream = load(videolist[index%videolist.size()])
	play()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		index += 1
		stream = load(videolist[index%videolist.size()])
		play()
