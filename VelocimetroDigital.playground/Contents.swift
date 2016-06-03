

import UIKit

//Crea Enumeración Velocidades con sus casos dependiendo de velocidad
enum Velocidades :Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VeocidadAlta = 120
    
    init (VelocidadInicial: Velocidades){
    self = VelocidadInicial
    }
    
}

//Creación de la clase Auto  y funcion para cambio de velocidades
class Auto{
    var Velocidad:Velocidades
    
    init(){
        Velocidad = Velocidades.Apagado
   }
    
    func cambioDeVelocidades()->(Actual:Int, VelocidadEnCadena:String){
        var Actual: Int
        var VelocidadEnCadena: String
        
        // declaración de casos en Switch para determinar velocidad
        switch Velocidad{
            
        case .Apagado:
            Actual = Velocidad.rawValue
            VelocidadEnCadena = "Apagado"
            Velocidad = .VelocidadBaja
            break //Corta la secuencia de switch  y  termina la funcion para retorno
        case.VelocidadBaja:
            Actual = Velocidad.rawValue
            VelocidadEnCadena = "Velocidad Baja"
            Velocidad = .VelocidadMedia
            break
            
        case .VelocidadMedia:
            Actual = Velocidad.rawValue
            VelocidadEnCadena = "Velocidad Media"
            Velocidad = .VeocidadAlta
            break
            
        case.VeocidadAlta:
            Actual = Velocidad.rawValue
            VelocidadEnCadena = "Velocidad Alta"
            Velocidad = .VelocidadMedia
            break
        }
        
        //Regresa el Tuple con la información necesaria
        return (Actual,VelocidadEnCadena)
    }}

 //contructor del objeto  y prueba de iteración
    var auto = Auto()
    
    for i in 1...20{
        
       var (actual, VelocidadenCadena) =  auto.cambioDeVelocidades()
    print( "\(actual), "+VelocidadenCadena)
        
    }
