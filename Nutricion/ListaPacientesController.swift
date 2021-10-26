
import Foundation
import UIKit

class ListaPacientesController :UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    var pacientes : [Paciente] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pacientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaPaciente") as! CeldaPacienteController
        celda.lblNombre.text = pacientes[indexPath.row].nombre
        celda.LblEstatura.text = pacientes[indexPath.row].estatura
        celda.lblEdad.text = pacientes[indexPath.row].edad
        celda.lblPeso.text = pacientes[indexPath.row].peso
        
        return celda
    }

    
    override func viewDidLoad() {
        self.title = "Pacientes"
    }
    
}
