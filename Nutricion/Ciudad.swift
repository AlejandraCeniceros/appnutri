

import Foundation

class Ciudad {
    var nombre = ""
    var estado = ""
    var pais = ""
    var icon = ""
    
    var pacientes : [Paciente] = []

    
    init (nombre: String, estado: String, pais: String, icon : String, pacientes: [Paciente] ){
        self.nombre = nombre
        self.estado = estado
        self.pais = pais
        self.icon = icon
        self.pacientes = pacientes
    }
}
