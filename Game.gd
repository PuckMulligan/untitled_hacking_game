extends Node

const InputResponse = preload("res://input_response.tscn")

@onready var history_rows = $GUI/Background/MarginContainer/Rows/GameInfo/ScrollContainer/HistoryRows

func _on_input_text_submitted(new_text):
	var input_response = InputResponse.instantiate()
	history_rows.add_child(input_response)