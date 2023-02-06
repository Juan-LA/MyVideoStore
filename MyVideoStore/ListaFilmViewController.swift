//
//  ViewController.swift
//  MyVideoStore
//
//  Created by Juan Liut on 04/02/23.
//

import UIKit

class ListaFilmViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listaFilm : [Film] = [Film(titolo: "Film bello", descrizione: "Meraviglioso", immagine:UIImage(named: "EndGame")), Film(titolo: "Film carino", descrizione: "Ci sta", immagine:UIImage(named: "EndGame")), Film(titolo: "Film brutto", descrizione: "È davvero brutto", immagine: UIImage(named: "EndGame"))]
    
    
    @IBOutlet weak var tbl: UITableView!
    
    
    //per dire alla tabella quante righe creare
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaFilm.count
    }
    
    //per customizzare la cella
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tbl.rowHeight = UITableView.automaticDimension
        
        let cell = tbl.dequeueReusableCell(withIdentifier: "cellaFilm") as! FilmTableViewCell
        
        //recupero il film per ogni riga
        //indexPath.row = indica indice della riga
        let film = listaFilm[indexPath.row]
        
        cell.titoloLbl.text = film.titolo
        cell.descrizioneLbl.text = film.descrizione
        cell.imgLbl.image = film.immagine
    
        return cell
    }
    
    //per vedere i dettagli quando clicco sulla cella
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let dettaglioVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dettaglioVC") as? DettaglioViewController
        
        dettaglioVC?.currentFilm = listaFilm[indexPath.row]
        
        //dettaglioVC?.view.backgroundColor = .brown
        
        self.navigationController?.pushViewController(dettaglioVC ?? UIViewController(), animated: true)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tbl.dataSource = self
        
        tbl.delegate = self
        
        tbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }


}

