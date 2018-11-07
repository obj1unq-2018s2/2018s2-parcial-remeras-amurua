import remeras.*

class Sucursal{
	var property pedidos = []
	var property cantParaDescuento 
	
	method agregarPedido(pedido){
		self.pedidos().add(pedido)
	}
	
	method totalFacturado(){
		return self.pedidos().sum{pedido => pedido.costoDePedido()}
	}
	
	method cantDePedidosDeColor(color){
		
		return self.pedidosDeColor(color).size()
	}
	
	method pedidosDeColor(color){
		var auxPedidos
		
		auxPedidos = pedidos.filter{remera => remera.color() == color}
		
		return auxPedidos
	}
	
	method pedidoMasCaro(){
		return self.pedidos().find{pedido => pedido.costoDePedido() == self.costoDePedidoMasCaro()}
	}
	
	method costoDePedidoMasCaro(){
		return self.pedidos().max{pedido => pedido.costoDePedido()}
	}
}
