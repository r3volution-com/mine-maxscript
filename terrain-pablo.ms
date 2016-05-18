fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ Tipomaterial = (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	aux= box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,offsetZ+posZ-1]  material:Tipomaterial
)


fn createPagoda posX posY posZ tamX tamY  numPlanta = (
	tamZ=tamY
	for p=1 to numPlanta do(
		for z=1 to tamZ do(
			for y=1 to tamY do(
				for x=1 to tamX do(
					if z==1 then (
						createBox x y z 1 1 1 posX posY posZ matMadera
					)
					else if z>1 and z<tamZ and (y==1 or y== tamY or x==1 or x==tamX) then(
						createBox x y z 1 1 1 posX posY posZ matMadera
					)
					else if z==tamZ then(
						createBox x y z 1 1 1 posX posY posZ matMarte
					)
				)
			)
		)
		
		for z=tamZ-2 to tamZ do(
			for y=1 to tamY+4 do(
				for x=1 to tamX+4 do(
					if z==tamZ-1 then (
						createBox x y z 1 1 1 (posX-2) (posY-2) posZ matMadera
					)
					else if z==tamZ and (y<tamY+3 and x<tamX+3 )then(
						createBox x y z 1 1 1 (posX-1) (posY-1) posZ matMarte
					)
				)
			)
		)
		posZ=posZ+tamZ
	)
		tamZ=tamX
		tamZ=tamZ*numPlanta
		iniX=1
		iniY=1
		finX=tamX
		finY=tamY
		for z=tamZ+1 to tamZ+(tamX/2) do(
			for y=iniY to finY do(
				for x=iniX to finX do(
					createBox x y z 1 1 1 posX posY 0 matPiedraarena
				)
			)
			finX=finX-1
			iniX=iniX+1
			finY=finY-1
			iniY=iniY+1
		)
)


createPagoda 0 0 0 10 10 3