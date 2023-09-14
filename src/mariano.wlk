import golosinas.*

object mariano {
	var bolsaDeGolosinas = []
	
	method bolsaDeGolosinas() = bolsaDeGolosinas
	method comprar(unaGolosina) {
		bolsaDeGolosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		bolsaDeGolosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = bolsaDeGolosinas.size()
	
	method tieneLaGolosina(unaGolosina) = bolsaDeGolosinas.contains(unaGolosina)
	
	method probarGolosinas() {
		bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC() = bolsaDeGolosinas.any({golosina => golosina.esLibreDeGluten()})
	
	method preciosCuidados() = bolsaDeGolosinas.all({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
	
	method sabores() = bolsaDeGolosinas.map({golosina => golosina.sabor()}).asSet()
	
	method golosinaMasCara() = bolsaDeGolosinas.max({golosina => golosina.precio()})
	
	method pesoGolosinas() = bolsaDeGolosinas.sum({golosina => golosina.peso()})
	
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.filter( {golosina => !self.tieneLaGolosina(golosina)} )
	
	method gustosFaltantes(gustosDeseados) = gustosDeseados.filter({gusto => !self.sabores().contains(gusto) })
}
