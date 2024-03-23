extends Control


var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Signal.connect("gd_collect", self, "_gd_collect")
	$ScoreLabel.text = "Score: "+str(score)



func _gd_collect(amount):
	score += amount
	$ScoreLabel.text = "Score: "+str(score)

