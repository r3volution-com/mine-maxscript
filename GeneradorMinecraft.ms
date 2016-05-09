tamanoX = 20
tamanoY = 20
tamanoZ = 1
iluminacion = false
numPira = 0
piraXY = 10

numCasa = 0
casaXY = 5
casaZ = 5
estaX = 5
estaY = 5
estaZ = 5
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



fn createSurface posX posY width lengt = (
	plane length:lengt width:width mapcoords:on pos:[posX,posY,0]
)
fn createBox posX posY posZ width lengt height offsetX offsetY offsetZ= (
	centroX = offsetX+posX+(width * 0.5)
	centroY = offsetY+posY+(lengt * 0.5)
	box length:lengt width:width height:height mapcoords:on pos:[centroX-1,centroY-1,posZ-1]
)
fn createTerrain posX posY posZ width lengt height = (
	--posX = posX - (width * 0.5)
	--posY = posY - (lengt * 0.5)
	--createSurface 0 0 lengt width
	for z=1 to height do (
		append terreno #()
		for y=1 to width do (
			append terreno[z] #()
			for x=1 to lengt do (
				append terreno[z][y] #()
				ran = random 1 z
				if ran == 1 then (
					if z == 1 OR (z > 1 AND terreno[z-1][y][x] == "Box" )  then(
						createBox x y z 1 1 1 posX posY posZ
						terreno[z][y][x] = "Box"
					)
				)
			)
		)
	)
)

fn createHouse posX posY posZ tamX tamY tamZ = (
	for z=2 to tamZ+1 do(
		for y=1 to tamY do(
			for x=1 to tamX do(
				if z==2 then (
					createBox x y z 1 1 1 posX posY posZ
				)
				else if (z>2 and z<tamZ+1 and (y==1 or y== tamY or x==1 or x==tamX)) and ((z==3 and x==2 and y==1) or (z==3 and x==3 and y==1) or (z==4 and x==2 and y==1) or (z==4 and x==3 and y==1) or (z==5 and x==2 and y==1) or (z==5 and x==3 and y==1))==false then(
					createBox x y z 1 1 1 posX posY posZ
				)
				else if z==tamZ+1 then(
					createBox x y z 1 1 1 posX posY posZ
				)
			)
		)
	)
	xa = 0
	for z=tamZ+2 to tamZ*2  do(
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

	spinner tamanoXpla "Tamaño ejeX " pos:[42,85] width:95 height:16 enabled:true scale: 1 type: #integer range:[20,100,tamanoX]

	spinner tamanoYpla "Tamaño ejeY    " pos:[190,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[20,100,tamanoY]
	
	spinner tamanoZpla "Tamaño ejeZ    " pos:[116,115] width:93 height:16 enabled:true scale: 1 type: #integer range:[1,3,tamanoZ]

	dropdownList iluminacion "" pos:[132,145] width:91 height:21 items:#("Dia","Noche")

	label labelIlu "Iluminacion: " pos:[70,147] width:60 height:17

	on generarMundo pressed do(
		createTerrain 0 0 0 tamanoX tamanoY tamanoZ
		createHouse 0 0 tamanoZ casaXY casaXY casaZ
		
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
			
		)else if i==2 then(
			
		)else if i==3 then(
		
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
	
	dropdownList elegirPiramide "" pos:[114,15] width:91 height:21 items:#("Tailandesa","Egipcia","Maya")

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
			
		)else if i==2 then(
			
		)else if i==3 then(
		
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

	spinner tamanoXesta "Tamaño ejeX " pos:[42,55] width:95 height:16 enabled:true scale: 1 type: #integer range:[5,10,estaX]

	spinner tamanoYesta "Tamaño ejeY    " pos:[190,55] width:93 height:16 enabled:true scale: 1 type: #integer range:[5,10,estaY]
	
	spinner tamanoZesta "Tamaño ejeZ    " pos:[116,85] width:93 height:16 enabled:true scale: 1 type: #integer range:[5,10,estaZ]

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






