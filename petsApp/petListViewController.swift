//
//  petListViewController.swift
//  petsApp
//
//  Created by Enrick on 24/03/22.
//

import UIKit

var petList: [Pet] = []


class petListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let cellId = "cellId"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    
    }
    func setupTableView () {tableView.register(UINib(nibName: "PetTableViewCell", bundle: nil), forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petList.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)    as! PetTableViewCell
        let row = indexPath.row
        let pet = petList[row]
        cell.petImageView.image = pet.image
        cell.petLabel.text = pet.name
        cell.specieisLabel.text = pet.species
        cell.selectionStyle = .none 
        return cell
       
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let pet = petList[row]
        let petDetailVC = PetDetailViewController(selectedPet: pet)
        navigationController?.pushViewController(petDetailVC, animated: true)
        
        }
    
}

  
