import golosinas.*

class Persona {
	const golosinas = []
	 
	method comprar(golosina) { golosinas.add(golosina) }
	
	method desechar (golosina) { golosinas.remove(golosina) }
	
	method golosinas() { return golosinas }

	method primerGolosina() { return golosinas.first() }

	method ultimaGolosina() { return golosinas.last() }
	
	method pesoGolosinas() { 
		return golosinas.sum({ golo => golo.peso() })
	}
	
	method probarGolosinas() {
		golosinas.forEach( {golosina => golosina.mordisco() } )
	}
	
	method golosinaMasPesada() { 
		return golosinas.max({ golo => golo.peso() })
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ golosina => golosina.libreGluten()}) 
	}
	
	method preciosCuidados() {
		return golosinas.all({ golosina => golosina.precio() < 10}) 
	}
	
	method golosinaDeSabor(sabor) {
		return golosinas.find({ golosina => golosina.sabor() == sabor })
	}
	
	method golosinasDeSabor(sabor) {
		return golosinas.filter({ golosina => golosina.sabor() == sabor })
	}
	
	method sabores() {
		return golosinas.map({ golosina => golosina.sabor() }).asSet()
	}

	method golosinaMasCara() {
		return golosinas.max( { golosina => golosina.precio() } )
	}

	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.difference(golosinas)	
	}

	method saboresFaltantes(saboresDeseados) {
		return saboresDeseados.filter({saborDeseado => ! self.tieneGolosinaDeSabor(saborDeseado)})	
	}
	
	method tieneGolosinaDeSabor(sabor) {
		return golosinas.any({golosina => golosina.sabor() == sabor})
	}
}