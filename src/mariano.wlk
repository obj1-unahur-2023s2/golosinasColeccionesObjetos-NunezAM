import golosinas.*

object mariano {
	var bolsa = []
	
	method comprar(unaGolosina) {
		bolsa.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		bolsa.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = bolsa.size()
	
	method tieneLaGolosina(unaGolosina) = bolsa.contains(unaGolosina)
	
	method probarGolosinas() {
		bolsa.forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC() = bolsa.any({golosina => golosina.esLibreDeGluten()})
	
	method preciosCuidados() = bolsa.all({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = bolsa.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = bolsa.filter({golosina => golosina.sabor() == unSabor})
	
	method sabores() = bolsa.map({golosina => golosina.sabor()}).asSet()
	
	method golosinaMasCara() = bolsa.max({golosina => golosina.precio()})
	
	method pesoGolosinas() = bolsa.sum({golosina => golosina.peso()})
}
