//
//  DettaglioViewController.swift
//  MyVideoStore
//
//  Created by Juan Liut on 06/02/23.
//

import UIKit

class DettaglioViewController: UIViewController {
//    var image : UIImage
//    var titolo : String
//    var descrizione : String
//
//    init(image: UIImage, titolo: String, descrizione: String) {
//        self.image = image
//        self.titolo = titolo
//        self.descrizione = descrizione
//    }
    
//    var currentFilm = Film(titolo: "Prova", descrizione: "Prova", immagine: UIImage(named: "EndGame"))
    
    var currentFilm : Film?
    
    @IBOutlet weak var copertina: UIImageView!
    
    @IBOutlet weak var titolo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        copertina.image = currentFilm?.immagine
        titolo.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        titolo.text = currentFilm?.titolo
        
        
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        
        self.navigationItem.backAction?.title = "Ciao"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
