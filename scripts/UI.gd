extends Control


var score = 0
var time_left = 10


func _ready():
	Signal.connect("gd_collect", self, "_gd_collect")
	$ScoreLabel.text = "Score: "+str(score)
	$TimeLabel.text = "Time: "+str(time_left)
	$Timer.start()
	

func _gd_collect(amount):
	score += amount
	$ScoreLabel.text = "Score: "+str(score)

func _on_Timer_timeout():
	time_left -= 1
	$TimeLabel.text = "Time: " + str(time_left)
	if time_left == 0:
		$Timer.stop()
#		GlobalSignals.emit_signal("remove_items")
	
