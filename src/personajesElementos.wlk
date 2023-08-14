object luisa {
	method nombre() {
		return self
	}
}

object mario {
	method encontrar(elemento) {
		
	}
}

object floki {
	var arma = ballesta
	method arma() {
		return arma
	}
	method cambiarArma(armaNueva) {
		arma = armaNueva
	}
	method encontrar(elemento) {
		elemento.recibirAtaque(self.arma())
		self.arma().usar()
	}
}

object ballesta {
	var municion = 10
	var usos = 0
	method estaCargada() {
		return municion > 0
	}
	method potencia() {
		return 4
	}
	method usar() {
		usos += 1
		municion -= 1
	}
}

object jabalina {
	var carga = 1
	var usos = 0
	method estaCargada() {
		return usos == 0
	}
	method potencia() {
		return 30
	}
	method usar() {
		usos = 1
		carga -= 1
	}
}

object castillo {
	var defensa = 150
	method altura() {
		return 20
	}
	method nivelDefensa() {
		return defensa
	}
	method recibirAtaque(arma) {
		if (arma.estaCargada()) {
			defensa -= arma.potencia()
		}
	}
}

object aurora {
	var estaViva = true
	method altura() {
		return 1
	}
	method estaViva() {
		return estaViva
	}
	method recibirAtaque(arma) {
		if (arma.estaCargada()) {
			if (arma.potencia() >= 10) {
			estaViva = false
			}
		}
	}
}

object tipa {
	method altura() {
		return 8
	}
	method recibirAtaque(arma) {
		
	}
}