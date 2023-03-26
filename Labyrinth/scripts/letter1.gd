extends Label

var default = load("res://resources/highlights/default.tres")
var gray = load("res://resources/highlights/gray.tres")
var green = load("res://resources/highlights/green.tres") 
var orange = load("res://resources/highlights/orange.tres")

var array_status = [default,gray,green,orange]

func _ready():
	change_status(0)

func change_status(status):
	$AnimationPlayer.play("flip")
	yield(get_tree().create_timer(0.3),"timeout")
	$AnimationPlayer.play("flip_back")
	theme = array_status[status]

func pop_anim():
	$AnimationPlayer.play("pop")
