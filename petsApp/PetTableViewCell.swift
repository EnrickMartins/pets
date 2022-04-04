//
//  PetTableViewCell.swift
//  petsApp
//
//  Created by Enrick on 24/03/22.
//

import UIKit

class PetTableViewCell: UITableViewCell {

    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var petLabel: UILabel!
    @IBOutlet weak var specieisLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        petImageView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        petImageView.layer.borderWidth = 3
        petImageView.layer.cornerRadius = petImageView.frame.width/2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
