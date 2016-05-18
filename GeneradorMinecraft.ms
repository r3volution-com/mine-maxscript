tipoPlaneta = 1
tamanoX = 40
tamanoY = 40
tamanoZ = 1
iluminacion = false
numPira = 0
piraXY = 10
numCasa = 0
casaXY = 5
casaZ = 5
estaX = 10
estaY = 10
estaZ = 10
numEsta = 0
coliXY = 20
coliZ = 20
numColi = 0
numRio = 0
numPuent = 0
pagX = 10
pagY = 10
pagZ = 3
numPag = 0
numMon = 0
monX = 10
monY = 10
monZ = 10
arbX = 1
arbY = 1
arbZ = 4
numArb = 0
terreno = #(#(#()))
typePyramid=1
	
--MATERIALES
matMarte= multimaterial numsubs: 6
matJupiter= multimaterial numsubs: 6
matJupiter= multimaterial numsubs: 6
matLuna= multimaterial numsubs: 6
matAgua= multimaterial numsubs: 6
matAguacong= multimaterial numsubs: 6
matArbolTroncoMarte= multimaterial numsubs: 6
matArbolTroncoJupiter= multimaterial numsubs: 6
matArbolTroncoLuna= multimaterial numsubs: 6
matArbolTroncoDentro= multimaterial numsubs: 6
matArbolHojaMarte= multimaterial numsubs: 6
matArbolHojaJupiter= multimaterial numsubs: 6
matArbolHojaLuna= multimaterial numsubs: 6
matMadera= multimaterial numsubs: 6
matNieve= multimaterial numsubs: 6
matPiedrabruta= multimaterial numsubs: 6
matPiedraladrillo= multimaterial numsubs: 6
matPiedramoho= multimaterial numsubs: 6
matPiedratrabajada= multimaterial numsubs: 6
matPiedraarena= multimaterial numsubs: 6
	
TexturaMarte=sysInfo.currentdir + "\\texture\Marte\sand.png"
TexturaJupiterArriba=sysInfo.currentdir + "\\texture\Jupiter\top.png"
TexturaJupiterAbajo=sysInfo.currentdir + "\\texture\Jupiter\side.png"
TexturaLuna=sysInfo.currentdir + "\\texture\Luna\suelo.png"
TexturaAgua=sysInfo.currentdir + "\\texture\agua\agua.png"
TexturaAguacong=sysInfo.currentdir + "\\texture\aguacong\aguacongelada.png"
TexturaArbolTroncoMarte=sysInfo.currentdir + "\\texture\arbol\tronco2.png"
TexturaArbolTroncoJupiter=sysInfo.currentdir + "\\texture\arbol\tronco.jpg"
TexturaArbolTroncoLuna=sysInfo.currentdir + "\\texture\arbol\tronco3.png"
TexturaArbolTroncoDentro=sysInfo.currentdir + "\\texture\arbol\troncodentro.png"
TexturaArbolHojaMarte=sysInfo.currentdir + "\\texture\arbol\hoja2.png"
TexturaArbolHojaJupiter=sysInfo.currentdir + "\\texture\arbol\hoja.png"
TexturaArbolHojaLuna=sysInfo.currentdir + "\\texture\arbol\hoja3.png"
TexturaMadera=sysInfo.currentdir + "\\texture\madera\madera.png"
TexturaNieve=sysInfo.currentdir + "\\texture\nieve\nieve.gif"
TexturaPiedrabruta=sysInfo.currentdir + "\\texture\piedrabruta\lado.png"
TexturaPiedraladrillo=sysInfo.currentdir + "\\texture\piedraladrillo\stone.png"
TexturaPiedramoho=sysInfo.currentdir + "\\texture\piedramoho\moho.png"
TexturaPiedratrabajada=sysInfo.currentdir + "\\texture\piedratrabajada\stone.png"
TexturaPiedraarena=sysInfo.currentdir + "\\texture\piedraarena\sandstone.png"
bitmapMarte=bitmaptexture filename: TexturaMarte
bitmapJupiterArriba=bitmaptexture filename: TexturaJupiterArriba
bitmapJupiterAbajo=bitmaptexture filename: TexturaJupiterAbajo
bitmapLuna=bitmaptexture filename: TexturaLuna
bitmapAgua=bitmaptexture filename: TexturaAgua
bitmapAguacong=bitmaptexture filename: TexturaAguacong
bitmapArbolTroncoMarte=bitmaptexture filename: TexturaArbolTroncoMarte
bitmapArbolTroncoJupiter=bitmaptexture filename: TexturaArbolTroncoJupiter
bitmapArbolTroncoLuna=bitmaptexture filename: TexturaArbolTroncoLuna
bitmapArbolTroncoDentro=bitmaptexture filename: TexturaArbolTroncoDentro
bitmapArbolHojaMarte=bitmaptexture filename: TexturaArbolHojaMarte
bitmapArbolHojaJupiter=bitmaptexture filename: TexturaArbolHojaJupiter
bitmapArbolHojaLuna=bitmaptexture filename: TexturaArbolHojaLuna
bitmapMadera=bitmaptexture filename: TexturaMadera
bitmapNieve=bitmaptexture filename: TexturaNieve
bitmapPiedrabruta=bitmaptexture filename: TexturaPiedrabruta
bitmapPiedraladrillo=bitmaptexture filename: TexturaPiedraladrillo
bitmapPiedramoho=bitmaptexture filename: TexturaPiedramoho
bitmapPiedratrabajada=bitmaptexture filename: TexturaPiedratrabajada
bitmapPiedraarena=bitmaptexture filename: TexturaPiedraarena




p=1
for p=1 to 6 do(
		matMarte[p].diffusemap =bitmapMarte
		matMarte[p].showInViewport=on	
			
		matLuna[p].diffusemap =bitmapLuna
		matLuna[p].showInViewport=on
			
		matAgua[p].diffusemap =bitmapAgua
		matAgua[p].showInViewport=on
			
		matAguacong[p].diffusemap =bitmapAguacong
		matAguacong[p].showInViewport=on
			
		matAgua[p].diffusemap =bitmapAgua
		matAgua[p].showInViewport=on
			
		matArbolHojaMarte[p].diffusemap =bitmapArbolHojaMarte
		matArbolHojaMarte[p].showInViewport=on
			
		matArbolHojaJupiter[p].diffusemap =bitmapArbolHojaJupiter
		matArbolHojaJupiter[p].showInViewport=on
			
		matArbolHojaLuna[p].diffusemap =bitmapArbolHojaLuna
		matArbolHojaLuna[p].showInViewport=on
			
		matMadera[p].diffusemap =bitmapMadera
		matMadera[p].showInViewport=on
			
		matNieve[p].diffusemap =bitmapNieve
		matNieve[p].showInViewport=on
			
		matPiedrabruta[p].diffusemap =bitmapPiedrabruta
		matPiedrabruta[p].showInViewport=on
			
		matPiedraladrillo[p].diffusemap =bitmapPiedraladrillo
		matPiedraladrillo[p].showInViewport=on
			
		matPiedramoho[p].diffusemap =bitmapPiedramoho
		matPiedramoho[p].showInViewport=on
			
		matPiedratrabajada[p].diffusemap =bitmapPiedratrabajada
		matPiedratrabajada[p].showInViewport=on
			
		matPiedraarena[p].diffusemap =bitmapPiedraarena
		matPiedraarena[p].showInViewport=on
			
if p==1 then(
		matJupiter[p].diffusemap=bitmapJupiterArriba
		matJupiter[p].showInViewport=on	

		matArbolTroncoDentro[p].diffusemap=bitmapArbolTroncoDentro
		matArbolTroncoDentro[p].showInViewport=on
	)
	
	else if p== 2 then(
		matJupiter[p].diffusemap =bitmapJupiterAbajo
		matJupiter[p].showInViewport=on
			
		matArbolTroncoMarte[p].diffusemap=bitmapArbolTroncoMarte
		matArbolTroncoMarte[p].showInViewport=on
			
		matArbolTroncoJupiter[p].diffusemap=bitmapArbolTroncoJupiter
		matArbolTroncoJupiter[p].showInViewport=on
			
		matArbolTroncoLuna[p].diffusemap=bitmapArbolTroncoLuna
		matArbolTroncoLuna[p].showInViewport=on
					
	)
	else(
		matJupiter[p].diffusemap =bitmapJupiterAbajo
		matJupiter[p].showInViewport=on
			
		matArbolTroncoMarte[p].diffusemap=bitmapArbolTroncoMarte
		matArbolTroncoMarte[p].showInViewport=on
			
		matArbolTroncoJupiter[p].diffusemap=bitmapArbolTroncoJupiter
		matArbolTroncoJupiter[p].showInViewport=on
			
		matArbolTroncoLuna[p].diffusemap=bitmapArbolTroncoLuna
		matArbolTroncoLuna[p].showInViewport=on
	)

)



	

fn createSurface posX posY width lengt = (
	plane length:lengt width:width mapcoords:on pos:[posX,posY,0]
)
fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ Tipomaterial = (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	aux= box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,offsetZ+posZ-1]  material:Tipomaterial
)
fn createFill posX posY posZ width lengt height = (
	for z=1 to height do (
		for y=1 to lengt do (
			for x=1 to width do (
				if terreno[z][y][x] != "Box" then (
					createBox x y z 1 1 1 posX posY posZ matMarte
					terreno[z][y][x] = "Box"
				)
			)
		)
	)
)
fn createLayer posX posY posZ width lengt layerZ = (
	for y=1 to lengt do (
		for x=1 to width do (
			if layerZ == 1 OR (layerZ > 1 AND terreno[layerZ-1][posY+y][posX+x] == "Box" AND terreno[layerZ][posY+y][posX+x] != "Box" )  then(
				if x == 1 or y == 1 or x == width or y == lengt then (
					ran = random 1 layerZ
					if ran == 1 then (
						if(tipoPlaneta == 1) then(
							createBox x y layerZ 1 1 1 posX posY posZ matMarte
							terreno[layerZ][posY+y][posX+x] = "Box"
						)
						if(tipoPlaneta == 2) then(
							createBox x y layerZ 1 1 1 posX posY posZ matLuna
							terreno[layerZ][posY+y][posX+x] = "Box"
						)
						if(tipoPlaneta == 3) then(
							createBox x y layerZ 1 1 1 posX posY posZ matJupiter
							terreno[layerZ][posY+y][posX+x] = "Box"
						)						
					)
				) else (
					if(tipoPlaneta == 1) then(
						createBox x y layerZ 1 1 1 posX posY posZ matMarte
						terreno[layerZ][posY+y][posX+x] = "Box"
					)
					if(tipoPlaneta == 2) then(
						createBox x y layerZ 1 1 1 posX posY posZ matLuna
						terreno[layerZ][posY+y][posX+x] = "Box"
					)
					if(tipoPlaneta == 3) then(
						createBox x y layerZ 1 1 1 posX posY posZ matJupiter
						terreno[layerZ][posY+y][posX+x] = "Box"
					)
				)
			)
		)
	)
)
fn createTerrain posX posY posZ width lengt height = (
	--posX = posX - (width * 0.5)
	--posY = posY - (lengt * 0.5)
	--createSurface 0 0 lengt width
	terreno = #(#(#()))
	for z=1 to height do (
		append terreno #()
		for y=1 to lengt do (
			append terreno[z] #()
			for x=1 to width do (
				append terreno[z][y] #()
			)
		)
	)
	createLayer posX posY posZ width lengt 1
	for z=2 to height do (
		rand = random (width/10) (width/5)
		for mesetas=1 to rand do (
			--print(posX + " "+ posY + " " + width + " " +lengt)
			layerwidth = random (width/4) (width/2)
			layerlengt = random (lengt/4) (lengt/2)
			layerposX = posX + random 1 (width-layerwidth)
			layerposY = posY+ random 1 (lengt-layerlengt)
			--print(posX + " "+ posY + " " + width + " " +lengt)
			createLayer layerposX layerposY posZ layerwidth layerlengt z
			--posX = posX + layerwidth
			--posY = posY + layerlengt
		)
	)
)
fn createHouse posX posY posZ tamX tamY tamZ = (
	createFill posX posY 0 tamX tamY posZ 
	for z=1 to tamZ do(
		for y=1 to tamY do(
			for x=1 to tamX do(
				if z==1 then (
					createBox x y z 1 1 1 posX posY posZ matMarte
				)
				else if (z>1 and z<tamZ and (y==1 or y== tamY or x==1 or x==tamX)) and ((z==2 and x==2 and y==1) or (z==2 and x==3 and y==1) or (z==3 and x==2 and y==1) or (z==3 and x==3 and y==1) or (z==4 and x==2 and y==1) or (z==4 and x==3 and y==1))==false then(
					createBox x y z 1 1 1 posX posY posZ matMarte
				)
				else if z==tamZ then(
					createBox x y z 1 1 1 posX posY posZ matMarte
				)
			)
		)
	)
	xa = 0
	for z=tamZ+1 to tamZ*2  do(
		for y=1 to tamY do(
			for x=1 to tamX do(
				if (x >= 1+xa AND x <= tamX-xa) then (
					createBox x y z 1 1 1 posX posY posZ matMarte
				)
			)
		)
		xa = xa +1
	)
)
fn createPyramid type posX posY posZ tamX tamY  =(
	createFill posX posY 0 tamX tamY posZ 
	if type==1 then(
		iniX=2
		iniY=2
		finX=tamX-1
		finY=tamY-1
		sube = false
		tamZ=tamX/2
		for z=1 to tamZ do(
			for y=iniY to finY do(
				for x=iniX to finX do(
					createBox x y z 1 1 1 posX posY posZ matPiedramoho
					if (sube == false) then (
						if (x == tamX/2 or x == (tamX/2)+1) and y == finY then(
							createBox x y z 1 1 1 posX (posY+1) posZ matPiedramoho
						) else if (x == tamX/2 or x == (tamX/2)+1) and y == iniY then(
							createBox x y z 1 1 1 posX (posY-1) posZ matPiedramoho
						) else if (y == tamY/2 or y == (tamY/2)+1) and x == finX then (
							createBox x y z 1 1 1 (posX+1) posY posZ matPiedramoho
						) else if (y == tamY/2 or y == (tamY/2)+1) and x == iniX then (
							createBox x y z 1 1 1 (posX-1) posY posZ matPiedramoho
						)
					)
				)
			)
			if sube == false then (
				sube = true
			) else (
				finX=finX-2
				iniX=iniX+2
				finY=finY-2
				iniY=iniY+2
				sube = false
			)
		)
	)
	else if type==2 then(
		iniX=1
		iniY=1
		finX=tamX
		finY=tamY
		tamZ=tamX/2
		for z=1 to tamZ do(
			for y=iniY to finY do(
				for x=iniX to finX do(
					createBox x y z 1 1 1 posX posY posZ matPiedraarena
				)
			)
			finX=finX-1
			iniX=iniX+1
			finY=finY-1
			iniY=iniY+1
		)
	)	
	else if type==3 then(
		iniX=3
		iniY=3
		finX=tamX-2
		finY=tamY-2
		sube = false
		tamZ=tamX/2
		inter=0
		for z=1 to tamZ do(
			for y=iniY to finY do(
				for x=iniX to finX do(
					createBox x y z 1 1 1 posX posY posZ matPiedrabruta
					if(x==iniX and y==iniY) or (x==iniX and y==finY) or (x==finX and y==iniY) or (x==finX and y==finY) then(
						if(sube==true) then(
							createBox x y z 1 1 1 posX posY (posZ+1) matPiedrabruta
						)
					)
				)
			)
			if sube == false then (
				sube = true
			) else (
				finX=finX-2
				iniX=iniX+2
				finY=finY-2
				iniY=iniY+2
				sube = false
			)
		)
		for x=1 to tamX do(
			for y=1 to tamY do(
				if (x==1 or x==tamX) or (y==1 or y==tamY) then(
					if inter!=2 then(
						inter=inter+1
					)else(
						for z=1 to (tamZ/2) do(
							createBox x y z 1 1 1 posX posY posZ matPiedrabruta
						)
						inter=0
					)
				)
			)
		)
	)
)

fn createMountain posX posY posZ width lengt = (
	createFill posX posY 0 width lengt posZ 
	iniX=1
	iniY=1
	finX=width
	finY=lengt
	tamZ=width/2
	for z=1 to tamZ-2 do(
		for y=iniY to finY do(
			for x=iniX to finX do(
				if x==iniX or y == iniY or x == finX or y == finY then (
					ran=random 1 10
					if ran < 8 then (
						if(tipoPlaneta == 1) then(
							createBox x y z 1 1 1 posX posY posZ matMarte
						)
						if(tipoPlaneta == 2) then(
							createBox x y z 1 1 1 posX posY posZ matLuna
						)
						if(tipoPlaneta == 3) then(
							createBox x y z 1 1 1 posX posY posZ matJupiter
						)	
						if ran<3 then ( 
							if(tipoPlaneta == 1) then(
								createBox x y z 1 1 1 posX posY (posZ+1) matMarte
							)
							if(tipoPlaneta == 2) then(
								createBox x y z 1 1 1 posX posY (posZ+1) matLuna
							)
							if(tipoPlaneta == 3) then(
								createBox x y z 1 1 1 posX posY (posZ+1) matJupiter
							)	
						)
					)
				) else (
					if(tipoPlaneta == 1) then(
						createBox x y z 1 1 1 posX posY posZ matMarte
					)
					if(tipoPlaneta == 2) then(
						createBox x y z 1 1 1 posX posY posZ matLuna
					)
					if(tipoPlaneta == 3) then(
						createBox x y z 1 1 1 posX posY posZ matJupiter
					)	
				)
			)
		)
		finX=finX-1
		iniX=iniX+1
		finY=finY-1
		iniY=iniY+1
	)
)

try(destroyDialog minecraft)
catch()

rollout minecraft "Generador Minecraft" width:310 height:600 (
	subRollout rollDentro "Dentro" pos:[5,10] width:300 height:600
)

rollout datosGlobal "General" width:296 height:104
(
	button generarMundo "GENERAR MUNDO" pos:[27,15] width:230 height:20 
	dropdownList elegirPlaneta "" pos:[114,45] width:91 height:21 items:#("Marte","Jupiter","Luna")
	label labelPla "Planeta: " pos:[70,47] width:43 height:17
	spinner tamanoXpla "Tamaño ejeX " pos:[42,85] width:95 height:16 enabled:true scale: 1 type: #integer range:[40,100,tamanoX]
	spinner tamanoYpla "Tamaño ejeY    " pos:[190,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[40,100,tamanoY]
	spinner tamanoZpla "Tamaño ejeZ    " pos:[116,115] width:93 height:16 enabled:true scale: 1 type: #integer range:[1,3,tamanoZ]
	dropdownList iluminacion "" pos:[132,145] width:91 height:21 items:#("Dia","Noche")
	label labelIlu "Iluminacion: " pos:[70,147] width:60 height:17

	on generarMundo pressed do(
		
		createTerrain 0 0 0 tamanoX tamanoY tamanoZ
		--createHouse 0 0 tamanoZ casaXY casaXY casaZ   ---Crear bucle para que se creen varias casas y cambiar aleatoriedad en su posicion de creacion en X e Y
		createPyramid typePyramid 0 0 tamanoZ piraXY piraXY
	)
	on tamanoXpla changed param do(
		tamanoX=tamanoXpla.value
	)
	on tamanoYpla changed param do(
		tamanoY=tamanoYpla.value
	)
	on tamanoZpla changed param do(
		tamanoZ=tamanoZpla.value
	)
	on elegirPlaneta selected i do
	(
		if i==1 then(
			tipoPlaneta = 1
		)else if i==2 then(
			tipoPlaneta = 2
		)else if i==3 then(
			tipoPlaneta = 3		
		)
	)	
	on iluminacion  selected i do(
		if i==1 then(
			
		)else if i==2 then(

		)
	)
)

rollout datosPira "Piramides" width:296 height:104
(
	dropdownList elegirPiramide "" pos:[114,15] width:91 height:21 items:#("Maya","Egipcia","Tailandesa")
	label labelPira "Piramide: " pos:[70,17] width:43 height:17
	spinner numPiram "Numero de Piramides    " pos:[116,55] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,3,numPira]
	spinner tamanoXpira "Tamaño ejeX " pos:[42,85] width:95 height:16 enabled:true scale: 1 type: #integer range:[10,20,piraXY]
	spinner tamanoYpira "Tamaño ejeY    " pos:[190,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[10,20,piraXY]
	
	on numPiram changed param do(
		numPira=numPiram.value
	)
	on tamanoXpira changed param do(
		piraXY=tamanoXpira.value
		tamanoYpira.value=piraXY
	)
	on tamanoYpira changed param do(
		piraXY=tamanoYpira.value
		tamanoXpira.value=piraXY
	)
	on elegirPiramide selected i do
	(
		if i==1 then(
			typePyramid=1
		)else if i==2 then(
			typePyramid=2
		)else if i==3 then(
			typePyramid=3
		)
	)
)

	rollout datosCasa "Casas" width:296 height:104
(
	spinner numCasas "Numero de Casas    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,3,numCasa]
	spinner tamanoXcasa "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[5,10,casaXY]
	spinner tamanoYcasa "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[5,10,casaXY]
	spinner tamanoZcasa "Tamaño ejeZ    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[5,10,casaZ]

	on numCasas changed param do(
		numCasa=numCasas.value
	)
	on tamanoXcasa changed param do(
		casaXY=tamanoXcasa.value
		tamanoYcasa.value=casaXY
	)
	on tamanoYcasa changed param do(
		casaXY=tamanoYcasa.value
		tamanoXcasa.value=casaXY
	)
	on tamanoZcasa changed param do(
		casaZ=tamanoZcasa.value		
	)	
)

rollout datosEstablo "Establos" width:296 height:104
(
	spinner numEstab "Numero de Establos    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,3,numEsta]
	spinner tamanoXesta "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[10,15,estaX]
	spinner tamanoYesta "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[10,15,estaY]
	spinner tamanoZesta "Tamaño ejeZ    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[10,15,estaZ]

	on numEstab changed param do(
		numEsta=numEstab.value
	)
	on tamanoXesta changed param do(
		estaX=tamanoXesta.value
	)
	on tamanoYesta changed param do(
		estaY=tamanoYesta.value
	)
	on tamanoZesta changed param do(
		estaZ=tamanoZesta.value		
	)
)

rollout datosColiseo "Coliseos" width:296 height:104
(
	spinner numColiseo "Numero de Coliseos    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,1,numColi]
	spinner tamanoXcoli "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[20,30,coliXY]
	spinner tamanoYcoli "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[20,30,coliXY]
	spinner tamanoZcoli "Tamaño ejeZ    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[20,30,coliZ]

	on numColiseo changed param do(
		numColi=numColiseo.value
	)
	on tamanoXcoli changed param do(
		coliXY=tamanoXcoli.value
		tamanoYcoli.value=coliXY
	)
	on tamanoYcoli changed param do(
		coliXY=tamanoYcoli.value
		tamanoXcoli.value=coliXY
	)
	on tamanoZcoli changed param do(
		coliZ=tamanoZcoli.value		
	)
)

rollout datosPuente "Rios y Puentes" width:296 height:104
(
	spinner numRios "Numero de Rios    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,2,numRio]
	spinner numPuen "Numero de Puentes por Rio   " pos:[116,50] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,2,numPuent]

	on numRios changed param do(
		numRio=numRios.value
	)
	on numPuen changed param do(
		numPuent=numPuen.value		
	)
)

rollout datosPagoda "Pagodas" width:296 height:104
(
	spinner numPago "Numero de Pagodas    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,2,numPag]
	spinner tamanoXpag "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[10,20,pagX]
	spinner tamanoYpag "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[10,20,pagY]
	spinner tamanoZpag "Tamaño en plantas    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[3,6,pagZ]

	on numPago changed param do(
		numPag=numPago.value
	)
	on tamanoXpag changed param do(
		pagX=tamanoXpag.value
	)
	on tamanoYpag changed param do(
		pagY=tamanoYpag.value
	)
	on tamanoZpag changed param do(
		pagZ=tamanoZpag.value		
	)
)

rollout datosMontaña "Montañas" width:296 height:104
(
	spinner numMont "Numero de Montañas    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,2,numMon]
	spinner tamanoXmon "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[10,20,monX]
	spinner tamanoYmon "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[10,20,monY]
	spinner tamanoZmon "Tamaño ejeZ    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[10,20,monZ]

	on numMont changed param do(
		numMon=numMont.value
	)
	on tamanoXmon changed param do(
		monX=tamanoXmon.value
	)
	on tamanoYmon changed param do(
		monY=tamanoYmon.value
	)
	on tamanoZmon changed param do(
		monZ=tamanoZmon.value		
	)
)

rollout datosVegetacion "Vegetacion" width:296 height:104
(
	spinner numArbol "Numero de Arboles    " pos:[116,17] width:115 scale: 1 type: #integer height:16 enabled:true range:[0,10,numArb]
	spinner tamanoXarb "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[1,2,arbX]
	spinner tamanoYarb "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[1,2,arbY]
	spinner tamanoZarb "Tamaño ejeZ    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[4,6,arbZ]

	on numArbol changed param do(
		numArb=numArbol.value
	)
	on tamanoXarb changed param do(
		arbX=tamanoXarb.value
	)
	on tamanoYarb changed param do(
		arbY=tamanoYarb.value
	)
	on tamanoZarb changed param do(
		arbZ=tamanoZarb.value		
	)
)
createdialog minecraft
AddSubRollout minecraft.rollDentro datosGlobal
AddSubRollout minecraft.rollDentro datosPira
AddSubRollout minecraft.rollDentro datosCasa
AddSubRollout minecraft.rollDentro datosEstablo
AddSubRollout minecraft.rollDentro datosColiseo
AddSubRollout minecraft.rollDentro datosPuente
AddSubRollout minecraft.rollDentro datosPagoda
AddSubRollout minecraft.rollDentro datosVegetacion






