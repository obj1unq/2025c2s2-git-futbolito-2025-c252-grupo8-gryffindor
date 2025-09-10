/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	

}


object pelota {
	const jugador = lionel
	const property image="pelota.png"
	var property position = game.at(5,5)

		method patear(){
		 self.validarPosicion()
		 position =  game.at((game.width() - 1).min(position.x() + 3), position.y()) 
		
	}
     method validarPosicion(){
		 if (!(jugador.position().x() == position.x())){
			 self.error("el jugadór No está lo suficientemente cerca para patear la pelota")
			
		 }
	 }
}
