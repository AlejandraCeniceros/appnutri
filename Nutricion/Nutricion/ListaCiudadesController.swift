

import UIKit

class ListaCiudadesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ciudades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCiudades") as! CeldaCiudadController
        celda.lblNombre.text = ciudades[indexPath.row].nombre
        celda.lblPais.text  = ciudades[indexPath.row].pais
        celda.lblEstado.text = ciudades[indexPath.row].estado
        celda.ImgIcon.image = UIImage(named: ciudades[indexPath.row].icon)
        
        return celda
    }
    
    var ciudades : [Ciudad] = []

    @IBOutlet weak var TVCiudad: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Pacientes por ciudades"
        
        
        ciudades.append(Ciudad(nombre: "Ciudad Obregón", estado: "Sonora", pais: "México", icon: "obre", pacientes:[
            Paciente(nombre: "Juan Perez", edad: "18 años", peso: "95.4kg", estatura: "1.85m"),
            Paciente(nombre: "Lucia Garcia", edad: "22 años", peso: "72.4kg", estatura: "1.65m"),
            Paciente(nombre: "Regina Maria", edad: "42 años", peso : "76.0kg", estatura: "1,76m"),
            Paciente(nombre: "Luis López", edad: "13 años", peso: "85.5kg", estatura: "1.77m"),
            Paciente(nombre: "Ramón Gaxiola", edad: "11 años", peso: "48.5kg", estatura: "1.55m")
        ]))
                               
        ciudades.append(Ciudad(nombre: "Hermosillo", estado: "Sonora", pais: "México", icon: "hillo", pacientes:[
            Paciente(nombre: "Thania Ortiz", edad: "15 años", peso: "56.4kg", estatura: "1.60m"),
            Paciente(nombre: "José Serrano", edad: "21 años ", peso: "77.6kg", estatura: "1.80m"),
            Paciente(nombre: "Nicolás Galarza", edad: "16 años", peso: "90.5kg", estatura: "1.83m"),
            Paciente(nombre: "Regina Martinez", edad: "55 años", peso: "63kg", estatura: "1.58m"),
            Paciente(nombre: "Esther Nieves", edad: "85 años", peso: "65kg", estatura: "1.55m")
        ]))
        
        ciudades.append(Ciudad(nombre: "Guadalajara", estado: "Jalisco", pais: "México", icon: "gdl", pacientes:[ Paciente(nombre: "Carlos Aguilar", edad: "28 años", peso: "85.4kg", estatura: "1.85m"),
            Paciente(nombre: "Maria Ledezma", edad: "12 años", peso: "51.2kg", estatura: "1.50m"),
            Paciente(nombre: "Christian Cervantes", edad: "18 años", peso: "81kg", estatura: "1,85m"),
            Paciente(nombre: "Leonardo Guerrero", edad: "25 años", peso: "75kg", estatura: "1.78m"),
            Paciente(nombre: "Ana Llanez", edad: "22 años", peso: "71kg", estatura: "1.73")
                                                                                                                
        ]))
        
        ciudades.append(Ciudad(nombre: "San Luis Potosi", estado: "San Luis Potosi", pais: "México", icon: "slp", pacientes:[
            Paciente(nombre: "Carla Ruiz", edad: "36 años", peso: "74kg", estatura: "1.75m"),
            Paciente(nombre: "Daniel Juarez", edad: "25 años", peso: "73kg", estatura: "1.82m"),
            Paciente(nombre: "Andres Barraza", edad: "15 años", peso: "65kg", estatura: "1.75"),
            Paciente(nombre: "Luisa Garza", edad: "33 años", peso: "55kg", estatura: "1.60"),
            Paciente(nombre: "Tadeo Carranza", edad: "55 años", peso: "1.76 kg", estatura: "68.5kg")
        
        
        ]))
        
        ciudades.append(Ciudad(nombre: "Ciudad de México", estado: "cdmx", pais: "México", icon: "cdmx", pacientes:[
            Paciente(nombre: "Carlos Aguilar", edad: "28 años", peso: "85.4kg", estatura: "1.85m"),
            Paciente(nombre: "Maria Ledezma", edad: "12 años", peso: "51.2kg", estatura: "1.50m"),
            Paciente(nombre: "Christian Cervantes", edad: "18 años", peso: "81kg", estatura: "1,85m"),
            Paciente(nombre: "Leonardo Guerrero", edad: "25 años", peso: "75kg", estatura: "1.78m"),
            Paciente(nombre: "Ana Llanez", edad: "22 años", peso: "71kg", estatura: "1.73")
        
        ]))
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ListaPacientesController
        destino.pacientes = ciudades[TVCiudad.indexPathForSelectedRow!.row].pacientes
    }
}

