array_valores = [[8, 27], [49,49]]

def raiz_quadrada_perfeita?(raiz)
	(Math.sqrt(raiz).to_i.to_f == Math.sqrt(raiz))
end

def primo?(numero_primo)
	(2..(numero_primo/2)).none?{|i| numero_primo % i == 0}
end

def magico?(numero_magico)
	raiz_numero = Math.sqrt(numero_magico)
	(raiz_quadrada_perfeita?(numero_magico) && primo?(raiz_numero.to_i))
end

def total_de_numeros_magicos?(par_de_array)
	contador_de_numeros_magicos = []
	(par_de_array[0]..par_de_array[1]).each do |numero_analisado| contador_de_numeros_magicos << numero_analisado if magico?(numero_analisado)
end
	contador_de_numeros_magicos
end


resultado_final = []
array_valores.each do |par_de_array|
	resultado_final += total_de_numeros_magicos?(par_de_array)
end


puts "Resultado: #{resultado_final.uniq.count}.\n Seriam os numeros: #{resultado_final.uniq.to_s}"