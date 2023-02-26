

clearscreen.

lock throttle to 1.0.

print "Counting down: ".

from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
	print "..." + countdown.
	wait 1.
}

until ship:maxthrust > 0{
	wait 0.5.
	print "Stage activated.".
	stage.
}

wait until ship:altitude > 70000.