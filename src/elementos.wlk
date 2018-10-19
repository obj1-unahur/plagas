class Hogar {
	var property nivelDeMugre
	var property confortQueOfrece
	
	method esBuene() = nivelDeMugre <= confortQueOfrece / 2
	method esAtacade(plaga) {
		nivelDeMugre += plaga.danioQueProduce()
	}
}

class Huerta {
	var property nivelDeProduccion
	method esBuene() = nivelDeProduccion > parametrosHuertas.minimoParaHuertaBuene() 
	method esAtacade(plaga) {
		var descensoProduccion = plaga.danioQueProduce()
		if (plaga.transmiteEnfermedades()) { 
			descensoProduccion += 10
		}
		nivelDeProduccion -= descensoProduccion
	}
}

object parametrosHuertas {
	var property minimoParaHuertaBuene
}

class Mascota {
	var property nivelDeSalud
	
	method esBuene() = nivelDeSalud > 15
	method esAtacade(plaga) {
		if (plaga.transmiteEnfermedades()) {
			nivelDeSalud -= plaga.danioQueProduce()
		}
	}
}

