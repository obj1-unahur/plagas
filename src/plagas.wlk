class Plaga {
	var property poblacion
	
	method ataca(elemento) {
		elemento.esAtacade(self)
		self.modificarPoblacionPorAtaque()
	}
	
	method modificarPoblacionPorAtaque() {
		poblacion *= 1.1
	}
}

class PlagaDeCucarachas inherits Plaga {
	method danioQueProduce() = poblacion / 2
	method transmiteEnfermedades() = poblacion > 500
}

class PlagaDePulgas inherits Plaga {
	method danioQueProduce() = poblacion * 2
	method transmiteEnfermedades() = true
}

class PlagaDeGarrapatas inherits PlagaDePulgas {
	override method modificarPoblacionPorAtaque() {
		poblacion *= 1.2
	}
}

class PlagaDeMosquitos inherits Plaga {
	var property transmiteEnfermedades
	method danioQueProduce() = poblacion
}

