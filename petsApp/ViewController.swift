//
//  ViewController.swift
//
//
//  Created by Enrick on 24/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPetList()

    }

    func setupPetList (){
        let clara = Pet(petName: "Clara", petSpecies: "Gato", petBirthdate: "10 de Novembro de 2020", petImage: #imageLiteral(resourceName: "istockphoto-186365280-1024x1024"))
        let diurex = Pet(petName: "Diurex", petSpecies: "Cachorro", petBirthdate: "15 de Maio de 2012", petImage: #imageLiteral(resourceName: "cachorro-chihuahua-um-macho-castanho_35239-197"))
        petList.append (clara)
        petList.append(diurex)
        
    }
    
    @IBAction func goToPetList(_ sender: Any)    {
        let petListVC = petListViewController()
        navigationController?.pushViewController(petListVC, animated: true)
    }


    
    @IBAction func goToPetViewController(_ sender: Any) {
        let addPetVC = addPetViewController()
        navigationController?.pushViewController(addPetVC, animated: true)
    }
    
    
    }
    


