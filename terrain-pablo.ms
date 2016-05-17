fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ= (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	 box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,offsetZ+posZ-1]
)


hueco=false;

fn createStable posX posY posZ tamX tamY tamZ= (
	for z=1 to tamZ do(
		for y=1 to tamY do(
			for x=1 to tamX do(
				if (((x==1 and y==1) or (x==1 and y==tamY) or (x==tamX and y==1) or (x==tamX and y==tamY))and z>3 )or z==1 then(
					createBox x y z 1 1 1 posX posY posZ
				)
				else if (x==tamX and (z==2 or z==3)) or  (y==tamY and (z==2 or z==3)) then(
					createBox x y z 1 1 1 posX posY posZ
				)
				if tamX > tamY then(
					if (y==1 and (z==2 or z==3)) then(
						createBox x y z 1 1 1 posX posY posZ
					)
				)else(
					if (x==1 and (z==2 or z==3)) then( ---POSIBLE DEJAR HUECO PARA PUERTA EN LUGAR DE PARED ENTERA
						createBox x y z 1 1 1 posX posY posZ
					)
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

createStable 0 0 0 9 9 5