extends Label
var i := 0
var database = FileAccess.open("res://Trivia-Printable.xlsx - Smarther Than a 5th Grader.csv", FileAccess.READ)
var line := database.get_csv_line()
@onready var label: Label = $"../Label2"

func _ready() -> void:
	text = line[0]

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("q"):
		label.text = "QUESTION:"
		line = database.get_csv_line()
		self.text = line[0]
		self.add_theme_font_size_override("font_size", 50) 
	elif event.is_action_pressed("a"):
		label.text = "ANSWER:"
		self.text = line[1]
		self.add_theme_font_size_override("font_size", 75) 
