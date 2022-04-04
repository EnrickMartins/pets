//
//  PetDetailViewController.swift
//  petsApp
//
//  Created by Enrick on 25/03/22.
//

import UIKit

class PetDetailViewController: UIViewController {

    @IBOutlet weak var birthdateLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var petImageView: UIImageView!
    
    let pet: Pet
    
    init(selectedPet: Pet){
        pet = selectedPet
        super.init(nibName: nil, bundle:nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
        setupPet()
   }
      
    func setupPet() {
        birthdateLabel.text = pet.birthdate
        speciesLabel.text = pet.species
        nameLabel.text = pet.name
        petImageView.image = pet.image
    }
        
    func setupImageView (){
        petImageView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        petImageView.layer.borderWidth = 3
        petImageView.layer.cornerRadius = petImageView.frame.width/2
        
    }

}
