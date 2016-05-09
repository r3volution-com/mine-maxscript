fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ= (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	terreno[posZ][posY][posX] = box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,posZ-1]
)


