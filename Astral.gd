extends Control

var lineEdit: LineEdit
var textEdit: TextEdit

func _ready():
    lineEdit = $LineEdit
    textEdit = $TextEdit

func _input(event):
    if event is InputEventKey and event.is_pressed():
        var key_text = OS.get_scancode_string(event.scancode)
        if key_text == "BackSpace":
            var new_text = lineEdit.text
            new_text.erase(new_text.length() - 1, 1)
            lineEdit.text = new_text
        elif key_text == "Space":
            lineEdit.text += " "
        elif key_text == "Enter":
            textEdit.text += lineEdit.text + "\n"
            lineEdit.clear()
        else:
            lineEdit.text += key_text