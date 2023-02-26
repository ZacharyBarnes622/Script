

clearscreen.

lock throttle to 1.0.

print "Counting down: ".

//from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
//	print "..." + countdown.
//	wait 1.
//}

until ship:maxthrust > 0{
	wait 0.5.
	print "Stage activated.".
	stage.
}

set mysteer to heading(90,90).

lock steering to mysteer.

until ship:apoapsis > 100000{
	
	if ship:velocity:surface:mag < 100{
		set mysteer to heading(90,90).
	} 
	else if ship:velocity:surface:mag >= 100 and ship:altitude < 10000{
		set mysteer to heading(90, 85).
		set currEle to 85.
		set altstep to (10000 - ship:altitude)/8.
		

		set eleChangeAlt to ship:altitude.

		until ship:altitude >= 10000{
			wait 1.
			set currAlt to ship:altitude.

			if currAlt > eleChangeAlt + altstep{
				set eleChangeAlt to ship:altitude.

				set currEle to currEle - 5.
				set mysteer to heading(90, currEle).
				print currEle.
			}
		}
		
	}
	else if ship:altitude >= 10000 and ship:altitude < 15000{
		set mysteer to heading(90,45).
	}

}
	