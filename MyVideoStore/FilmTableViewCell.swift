//
//  FilmTableViewCell.swift
//  MyVideoStore
//
//  Created by Juan Liut on 04/02/23.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    @IBOutlet weak var imgLbl: UIImageView!
    @IBOutlet weak var titoloLbl: UILabel!
    @IBOutlet weak var descrizioneLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
