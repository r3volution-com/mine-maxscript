mapwidth = 20 as Integer
maplength = 20 as Integer
mapheight = 5
cero = 0
fn createSurface posX posY width length = (
	plane length:length width:width mapcoords:on pos:[posX,posY,0]
)
fn createBox posX posY posZ width length height = (
	centroX = posX+(width*0.5)
	centroY = posY+(length*0.5)
	box length:length width:width height:height mapcoords:on pos:[centroX,centroY,posZ]
)

createSurface 0 0 mapwidth maplength

z=0
for i=0 to mapwidth do(
	for j=0 to maplength do(
		ran = random cero mapheight
		if z < mapheight AND ran == mapheight then(
			for k=0 to mapheight do(
				createBox i j k 1 1 1
			)
			z = z + 1
		) 
	)
)