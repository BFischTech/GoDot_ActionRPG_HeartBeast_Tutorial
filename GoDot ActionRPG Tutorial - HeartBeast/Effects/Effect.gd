extends AnimatedSprite

onready var animatedSprite = $AnimatedSprite

func _ready():
	self.connect("animation_finished", self, "_on_animation_finished")
	#technically not required, but if in would force game to always play sprite starting at frame 0
	frame = 0 
	play("Animate")
	

func _on_animation_finished():
	queue_free()
