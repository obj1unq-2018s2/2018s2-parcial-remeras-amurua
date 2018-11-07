import empresa.*

class RemeraLisa{
	var property talle
	const property color = ""
	const coloresBasicos = ["Blanco","Negro","Gris"]
	
	method costo(){
		return self.costoDeBase() + self.costoPorColor()
	}
	
	method costoDeBase(){
		var costo
		if(self.talle().between(32,41)){
			costo = 80
		}else{
			costo = 100
		}
		
		return costo
	}
	
	method costoPorColor(){
		var costo = 0
		if(not coloresBasicos.contains(color)){
			costo = self.costoDeBase() * 0.1
		}
		
		return costo
	}
	
	method porcentajeDeDescuento(){
		return 10
	}
}

class RemeraBordada inherits RemeraLisa{
	const property cantDeColores
	
	override method costo(){
		return super() + self.costoPorBordado()
	}
	
	method costoPorBordado(){
		var costo = 20
		
		if(self.cantDeColores() * 10 > costo){
			costo = self.cantDeColores() * 10
		}
		
		return costo
	}
	
	override method porcentajeDeDescuento(){
		return 2
	}
}

class RemeraSublimada inherits RemeraLisa{
	const dibujo
	const convenioCon
	
	override method costo(){
		return super() + self.costoDeSublimado() + dibujo.empresa().derechoDeAutor() 
	}
	
	method costoDeSublimado(){
		return dibujo.superficie() * 0.5
	}
	
	override method porcentajeDeDescuento(){
		var porcentaje = 10
		
		if(convenioCon == dibujo.empresa()){
			porcentaje = 20
		}
		
		return porcentaje
	}
}







