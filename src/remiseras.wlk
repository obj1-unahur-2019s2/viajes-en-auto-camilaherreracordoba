 
 object ludmila {
 	var pago
 	method cuantoPaga( distanciaEnKms){
 		pago = distanciaEnKms * 18
 		return pago
 	}
 }
 
 object anaMaria {
 	var pago
 	var estaEconomicamenteEstable
 	method estaEconomicamenteEstable() {
 		return estaEconomicamenteEstable
 	}
 	method indicarQueNoEstaEstable() {
 		estaEconomicamenteEstable = false
 	}
 	method indicarQueEstaEstable() {
 		estaEconomicamenteEstable = true
 	}
 	method cuantoPaga( distanciaEnKms ) {
 		if (not( estaEconomicamenteEstable )) {
 			pago = distanciaEnKms * 25
 		} else {
 			pago = distanciaEnKms * 30	
 		}
 		return pago
 	}
 }
 
 object teresa {
 	var pago
 	var cuantoPaga = 22
 	method determinarCuantoPaga( cantidadNueva ) {
 		cuantoPaga = cantidadNueva
 	}
 	method cuantoPaga( distanciaEnKms ) {
 		pago = ( distanciaEnKms * cuantoPaga )
 		return pago
 	}
 }

object roxana {
	method cuantoCobra( cliente, distancia ) {
		return cliente.cuantoPaga(distancia)
	}
}

object gabriela { 
	var pagoInicial
	var aumentoPorAltaGama
	method cuantoCobra ( cliente, distancia ) {
		pagoInicial = cliente.cuantoPaga(distancia)
		aumentoPorAltaGama = (20/100) * pagoInicial
		return cliente.cuantoPaga(distancia) + aumentoPorAltaGama
	}
}

object mariela {
	var cobra
	method cuantoCobra (cliente, distancia ) {
		if (cliente.cuantoPaga(distancia) < 50) {
			cobra = 50
		} else {
			cobra = cliente.cuantoPaga(distancia)
		}
		return cobra
	}
}

object juana {
	var cobra
	method cuantoCobra( cliente, distancia ) {
		if ( distancia <= 8 ) {
			cobra = 100
		} else {
			cobra = 200
		}
		return cobra
	}
}

object lucia {
	var reemplazaA 
	method reemplazaA() {
		return reemplazaA
	}
	method reemplazar(remisera){
		reemplazaA = remisera
	}
	method cuantoCobraEnReemplazo (cliente, distancia) {
		return reemplazaA.cuantoCobra(cliente, distancia)
	}
}

object melina {
	var trabajaPara
	method trabajaPara() {
		return trabajaPara
	}
	method indicarParaQuienTrabaja(persona) {
		trabajaPara = persona
	}
	method cuantoPagaTrabajando (distancia) {
		return trabajaPara.cuantoPaga(distancia)
	}
}