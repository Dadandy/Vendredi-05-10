 def weight_watchers(tableau)
 	calories = {
	"Lipides" => 9,
	"Glucides" => 4,
	"Protéines" => 4
			}

	total = 0
	for i in 0...tableau.length
		total += tableau.values[i].to_f * calories.values[i].to_i
	end
	total.to_i
end


def meal_weight_watchers(hash)
	total = 0
	for i in 0...hash.length
		total += weight_watchers(hash.values[i])
	end
	puts total.to_i
end
#meal_weight_watchers(menu)

menu ={ 
    "Oeuf" => {
        "Lipides" => 38.4,
        "Glucides" => 18.3,
        "Protéines" => 36.3
     },
   "Frites" => {
        "Lipides" => 15,
        "Glucides" => 41,
        "Protéines" => 3.4
     },
   "Biere" => {
        "Lipides" => 0,
        "Glucides" => 25,
        "Protéines" => 4
     },
    "prix" =>
      {"Oeuf" => { :prix => 15 },
       "Frites" => { :prix => 4 },
       "Biere" => { :prix  => 5 }
      }
   
}
def meal_price(array)
	i = 0
	somme = 0
array1 = array.values[array.length - 1]
array2 = array1.values
array3 = []
array2.each{|x|
	array3[i] = x.values
	i += 1
}

array3.each{|s|
	somme += s[0].to_i
}
puts "prix : #{somme}"
end
meal_price(menu)