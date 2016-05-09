mapwidth = 20
maplength = 20
mapheight = 3
terreno = #(#(#()))
fila = 1
	
fn createSurface posX posY width lengt = (
	plane length:lengt width:width mapcoords:on pos:[posX,posY,0]
)
fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ= (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	terreno[posZ][posY][posX] = box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,posZ-1]
)
fn createTerrain posX posY posZ width lengt height = (
	posX = posX - (width * 0.5)
	posY = posY - (lengt * 0.5)
	createSurface 0 0 width lengt
	for z=1 to height do (
		append terreno #()
		for y=1 to width do (
			append terreno[z] #()
			for x=1 to lengt do (
				append terreno[z][y] #()
				ran = random 1 z
				if ran == 1 then (
					if z == 1 OR (z > 1 AND classOf terreno[z-1][y][x] as string == "Box" )  then(
						createBox x y z 1 1 1 posX posY posZ
					)
				)
			)
		)
	)
)

createTerrain 0 0 0 mapwidth maplength mapheight