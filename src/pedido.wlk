import remeras.*

class Pedido{
	const remeras = []
	const property sucursal
	
	method costoDePedido(){
		return self.costoDeBase() - self.costoDeDescuento()
	}
	
	method costoDeBase(){
		return self.costoDeRemeras() * self.cantDeRemeras()
	}
	
	method costoDeRemeras(){
		return remeras.sum{remera => remera.costo()}
	}
	
	method cantDeRemeras(){
		return remeras.size()
	}
	
	method costoDeDescuento(){
		var costo = 0
		
		if(self.aplicaDescuento()){
			costo = self.costoDeBase() * (self.traerPorcentajeDeDescuento() / 100)
		}
		
		return costo
	}
	
	method aplicaDescuento(){
		return sucursal.cantParaDescuento() <= self.cantDeRemeras()
	}
	
	method traerPorcentajeDeDescuento(){
		return remeras.sum{remera => remera.porcentajeDeDescuento()} / self.cantDeRemeras()
	}
}
