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
	method cambiarArma() {
		if (arma == ballesta) {
			arma = jabalina
		}
		else {
			arma = ballesta
		}
	}
	method encontrar(elemento) {
		elemento.recibirAtaque(self.arma())
	}
}

object ballesta {
	var municion = 10
	var usos = 0
	method potencia() {
		if (municion > 0) {
			municion -= 1
			usos += 1
			return 4
		}
		else {
			return 0
		}
	}
}

object jabalina {
	var carga = 1
	var usos = 0
	method potencia() {
		if (carga == 1) {
			carga -= 1
			usos += 1
			return 30
		}
		else {
			return 0
		}
	}
}

object castillo {
	method altura() {
		return 20
	}
	method nivelDefensa() {
		return 150
	}
}

object aurora {
	method altura() {
		return 1
	}
	method estaViva() {
		return true
	}
}

object tipa {
	method altura() {
		return 8
	}
}