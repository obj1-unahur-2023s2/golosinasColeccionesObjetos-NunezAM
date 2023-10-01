import golosinas.*

object mariano {
	const property bolsaDeGolosinas = []
	const property totalGolosinasCompradas = []
	
	method comprar(unaGolosina) {
		bolsaDeGolosinas.add(unaGolosina)
		totalGolosinasCompradas.add(unaGolosina)
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
	
	method gastoEn(sabor) = self.golosinasDeSabor(sabor).sum({g => g.precio()})
	
	method saborMasPopular() = self.sabores().max({s => self.cantidadDeGolosinasDeSabor(s)})
	
	method cantidadDeGolosinasDeSabor(sabor) = bolsaDeGolosinas.count({g => g.sabor() == sabor})
	
	method saborMasPesado() = self.sabores().max({s => self.totalPesoEnSabor(s)})
	
	method totalPesoEnSabor(sabor) = self.golosinasDeSabor(sabor).sum({g => g.peso()})
	
	method comproYDesecho(golosina) = totalGolosinasCompradas.contains(golosina) && !bolsaDeGolosinas.contains(golosina)
}










