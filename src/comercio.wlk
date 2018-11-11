import sucursal.*

class Comercio {
	const property sucursales = []
	
	method registrarPedido(pedido){
		//Decidi validar si la sucursal pertenece al comercio
		if(self.perteneceAComercio(pedido.sucursal())){
			pedido.sucursal().agregarPedido(pedido)
		}else{
			self.error("La sucursal no pertenece a este comercio")
		}
	}
	
	method perteneceAComercio(sucursal){
		return sucursales.contains(sucursal)
	}
	
	method totalFacturado(){
		return self.sucursales().sum{sucursal => sucursal.totalFacturado()}
	}
	
	method totalFacturadoPorSucursal(sucursal){ // TODO Este método es innecesario
		return sucursal.totalFacturado()
	}
	
	method cantDePedidosDeColor(color){
		var cantidad // TODO ¿Para qué esta variable?
		
		cantidad = self.sucursales().sum{sucursal => sucursal.cantDePedidosDeColor(color)}
		
		return cantidad
	}
	
	method pedidoMasCaro(){ // TODO El código no corresponde con el nombre del método
		return self.sucursales().find{sucursal => sucursal == sucursal}
	}
	
	method sucursalQueMasFacturo(){ // TODO No hace lo que se pide.
		return self.sucursales().filter{sucursal => sucursal.totalFacturado() == self.pedidoMasCaro()}
	}
}
