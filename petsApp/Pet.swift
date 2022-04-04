//
//  Pet.swift
//  petsApp
//
//  Created by Enrick on 25/03/22.
//

import UIKit

class Pet {
    
    let name: String
    let species : String
    let birthdate : String
    let image : UIImage
    
    init (petName: String, petSpecies: String, petBirthdate: String, petImage: UIImage)

    {
        name = petName
        species = petSpecies
        birthdate = petBirthdate
        image = petImage
    }
    
    
    
}
