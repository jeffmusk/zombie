#Prueba de juego megazombie

#Inicializacion de ciclo de vida de la poblacion

dia = 0
poblacion = 20.to_i

info = Hash.new 
	info["comida"] = 10
	info["medicina"] = 5
	info["materiales"] = 0
	

while poblacion > 0 	
	puts "-----------------------------------"
	dia +=  1
	puts "---------------DIA #{dia} --------------"

puts "los recurso exitentes son"
puts " -----------       ----------- "

	info["poblacion"] = poblacion


	info.each	do |key,value|

		puts "#{key} => #{value}"
		puts " "
	end

puts "Que quieres salir a buscar"


recurso  = gets.chomp


# Comprobar si el recurso esta en el diccionario

until info.has_key? recurso 
		puts " No es algo que se pueda encontra"
		puts "intenta con otro recurso"
		recurso  = gets.chomp		
end	

puts "........... ........ ........ ........ ......"


puts " analizando el mapa para ir  por #{recurso}"

@cargando = 0
#ayuda a la interfaz para parecer que esta cargando 
puts ""



def espera
	print "- "
	while @cargando < 600000
		@cargando += 1
	end
	@cargando = 0
end

puts ""	

def segundos
		while @cargando < 100000
		@cargando += 1
		end
		@cargando = 0
end

def completo
 puts ""
   
   for i in 0..12
   espera
   end

carg = ["C","A","R","G","A","N","D","O"," "]
	carg.each do |c|
		print c
			for i in 0..9
				segundos
			end
		end

	for i in 0..12
	   espera
	   end

puts ""
puts ""
end

completo
puts "Cuantos soldados destinas para la mision"

soldados = gets.chomp.to_i

#·validacion de los soldados  que iran por los recursos
	while soldados <= 0
		puts ""
			puts "No has agregado ningun soldado a la mision"
			puts ""
			puts "........................................."
			puts "asigna nueva mente"
			soldados = gets.chomp.to_i
	end
		
		
	while soldados > poblacion
			puts ""
		puts "No hay tanta gente "
		puts ""
		puts "........................................."
		puts "asigna nuevamente"
		soldados = gets.chomp.to_i
			
	end
completo
if  soldados != poblacion	
	puts ""

	puts "Los soldados estan despidendose de sus familias"
else 
 	puts ""
	
	puts "Estos son los ultimos soldados de la humanidad, un minuto de silencio"	 	

end
poblacion -= soldados
entrenamiento = 1
equipo = 0

completo

puts "se quedan en la base #{poblacion} personas"

espera


#--------------------------------------BATALLA----------------------------------------------
dificultad = Hash.new {} 
	dificultad["comida"] = 1.2
	dificultad["medicina"] = 1.6
	dificultad["materiales"] = 2.2
	dificultad["poblacion"] = 1.8

niveld = dificultad[recurso]
z1 = rand(soldados/2) + 2
zo = z1*niveld
zombies = zo.to_i

puts "En la busqueda de mas #{recurso} han aparecido #{zombies} zombies "

completo
puts "-------------------------!!! DISPAREN ¡¡¡----------------------"
completo
puts  "Ha empezado la batalla"
 


while zombies > 0
	dañoz = rand(21)
	daños = rand(21) + entrenamiento +equipo
		if dañoz >= daños
			soldados -= 1
			if soldados = 0
				zombies = 0
			end
		else	
			zombies -= 1
		end
	
end
if soldados != 0 
	puts "han sobrevivido #{soldados} soldados"
		recoleccion = rand(soldados)*2
		recoleccion.to_i
	puts ""

	puts "Logrando recojer #{recoleccion} #{recurso} "

	puts ""

	puts "Volviendo a la base"

completo
#-----------------------------------FIN DE BATALLA----------------------------------------------

antiguo = info[recurso]
puts "antiguos recursos = #{antiguo} "
recolecta = recoleccion + antiguo	

if recurso != "poblacion"

	puts "nuevos recursos   = #{recolecta}"
	info[recurso] =  recolecta  

	puts "soldados #{soldados} hasta aqui y  #{recolecta} recursos "


	poblacion += soldados
	puts "los sobrevivientes totales son #{poblacion}"	
else
	puts "Hemos encontrado a  #{recoleccion} personas"
	 

	poblacion.to_i
	recolecta.to_i
	poblacion += recoleccion + soldados
	puts "los sobrevivientes totales son #{poblacion}"		

end


else
	puts "Nadie ha sobrevivido"
end

	gets
#final de inicio 	
end
