//
//  ViewController.swift
//  MyVideoStore
//
//  Created by Juan Liut on 04/02/23.
//

import UIKit

class ListaFilmViewController: UIViewController, UITableViewDataSource {
    
    var listaFilm : [Film] = [Film(titolo: "Film bello", descrizione: "Meraviglioso", immagine:UIImage(named: "EndGame")), Film(titolo: "Film carino", descrizione: "Ci sta", immagine:UIImage(named: "EndGame")), Film(titolo: "Film brutto", descrizione: "È davvero brutto", immagine: UIImage(named: "EndGame"))]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaFilm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tbl.dequeueReusableCell(withIdentifier: "cellaFilm") as! FilmTableViewCell
        
        //recupero il film per ogni riga
        //indexPath.row = indica indice della riga
        let film = listaFilm[indexPath.row]
        
        cell.titoloLbl.text = film.titolo
        cell.descrizioneLbl.text = film.descrizione
        cell.imgLbl.image = film.immagine
        
        //print("The loaded image: \(film.immagine)")
        
//        if let image = film.immagine {
//            cell.imgLbl.image = image
//        }
        //cell.imgLbl?.image = (film.immagine)
        
        return cell
    }
    

    @IBOutlet weak var tbl: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tbl.dataSource = self
        
        tbl.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    }


}

