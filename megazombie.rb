#Prueba de juego megazombie

#Inicializacion de ciclo de vida de la poblacion

dia = 0
poblacion = 4


while poblacion > 0 do	
	dia +=  1
	info = Hash.new 
	info["comdia"] = '10'
	info["medicina"] = '5'
	info["materiales"] = '0'
	info["poblacion"] = poblacion


	info.each	do |key,value|
		puts "#{key} => #{value}"
	end

puts "Que quieres buscar"
recurso  = gets.chomp
rllaves  = info.each do |key,value|
	rllaves = key
	end	


	if recurso != rllaves
		puts "No es algo que se pueda recolectar"
	end	






	poblacion  -=  1
	puts "Es el dia #{dia} y hay #{poblacion} personas"








#final de inicio 	
end
