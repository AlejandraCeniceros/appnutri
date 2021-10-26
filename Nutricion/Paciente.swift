
import Foundation
import UIKit

class Paciente {
    
    var nombre = ""
    var edad = ""
    var peso = ""
    var estatura = ""
    
    var pacientes : [Paciente] = []

    init(nombre: String, edad: String, peso:String, estatura: String) {
        self.nombre = nombre
        self.edad = edad
        self.peso = peso
        self.estatura = estatura
    }
}
