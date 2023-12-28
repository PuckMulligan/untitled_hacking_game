extends Control

var lineEdit: LineEdit
var textEdit: TextEdit

func _ready():
    lineEdit = $LineEdit
    textEdit = $TextEdit

    lineEdit.connect("text_entered", Callable(self, "_on_text_entered"))

func _input(event):
    if event is InputEventKey and event.pressed:
        _on_text_entered(lineEdit.text)

func _on_text_entered(text: String):
    textEdit.text = text