//
//  Film.swift
//  MyVideoStore
//
//  Created by Juan Liut on 04/02/23.
//

import Foundation
import UIKit

class Film{
    let titolo : String
    let descrizione : String
    let immagine : UIImage?
    
    init(titolo: String, descrizione: String, immagine: UIImage?) {
        self.titolo = titolo
        self.descrizione = descrizione
        self.immagine = immagine
    }
}
