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
	
	method totalFacturadoPorSucursal(sucursal){
		return sucursal.totalFacturado()
	}
	
	method cantDePedidosDeColor(color){
		var cantidad
		
		cantidad = self.sucursales().sum{sucursal => sucursal.cantDePedidosDeColor(color)}
		
		return cantidad
	}
	
	method pedidoMasCaro(){
		return self.sucursales().find{sucursal => sucursal.}
	}
	
	method tallesNoPedidos(){
		var talles = new Range(32 , 48)
		var tallesNoPedidos
		
		
		
		return tallesNoPedidos
	}
	
	method sucursalQueMasFacturo(){
		return self.sucursales().filter{sucursal => sucursal.totalFacturado() == self.pedidoMasCaro()}
	}
}
