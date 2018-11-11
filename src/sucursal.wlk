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
		
		return self.pedidosDeColor(color).size() // TODO Más fácil con count.
	}
	
	method pedidosDeColor(color){
		var auxPedidos // TODO Variable innecesaria
		
		auxPedidos = pedidos.filter{remera => remera.color() == color}
		
		return auxPedidos
	}
	
	method pedidoMasCaro(){ // TODO Hay formas más simples de hacer esto.
		return self.pedidos().find{pedido => pedido.costoDePedido() == self.costoDePedidoMasCaro()}
	}
	
	method costoDePedidoMasCaro(){ // TODO Esto devuelve un pedido, no un costo.
		return self.pedidos().max{pedido => pedido.costoDePedido()}
	}
}
