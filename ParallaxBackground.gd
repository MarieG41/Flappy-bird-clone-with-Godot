extends ParallaxBackground

@export var scrollSpeed = 0
@onready var pipes = preload("res://pipes.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	spawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.scroll_base_offset.x -= scrollSpeed * delta

func _on_timer_timeout():
	spawn() # Replace with function body.

func spawn():
	var pipeTemp = pipes.instantiate()
	add_child(pipeTemp)
