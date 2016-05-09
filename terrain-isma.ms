fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ= (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,posZ-1]
)



fn createHouse posX posY posZ tamX tamY tamZ = (
	for z=1 to tamZ do(
		for y=1 to tamY do(
			for x=1 to tamX do(
				if z==1 then (
					createBox x y z 1 1 1 posX posY posZ
				)
				else if (z>1 and z<tamZ and (y==1 or y== tamY or x==1 or x==tamX)) and ((z==2 and x==2 and y==1) or (z==2 and x==3 and y==1) or (z==3 and x==2 and y==1) or (z==3 and x==3 and y==1) or (z==4 and x==2 and y==1) or (z==4 and x==3 and y==1))==false then(
					createBox x y z 1 1 1 posX posY posZ
				)
				else if z==tamZ then(
					createBox x y z 1 1 1 posX posY posZ
				)
			)
		)
	)
	xa = 0
	for z=tamZ+1 to tamZ*2  do(
		for y=1 to tamY do(
			for x=1 to tamX do(
				if (x >= 1+xa AND x <= tamX-xa) then (
					createBox x y z 1 1 1 posX posY posZ
				)
			)
		)
		xa = xa +1
	)
)

createHouse 0 0 0 10 10 5