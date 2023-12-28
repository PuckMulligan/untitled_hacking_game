extends CanvasLayer

func _ready():
	# Hide the terminal initially
	hide_terminal()

func hide_terminal():
	# Hide the entire CanvasLayer, including all child nodes
	set_visible(false)

func show_terminal():
	# Show the entire CanvasLayer, including all child nodes
	set_visible(true)

func _input(event):
	if event.is_action_pressed("toggle_terminal"):
		# Toggle the visibility of the CanvasLayer (hide/show the entire terminal)
		if is_visible():
			hide_terminal()
		else:
			show_terminal()
