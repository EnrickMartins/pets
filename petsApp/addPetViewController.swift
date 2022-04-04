//
//  addPetViewController.swift
//  petsApp
//
//  Created by Enrick on 31/03/22.
//

import UIKit

class addPetViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdateTextView: UITextField!
    @IBOutlet weak var speciesTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cadastre seu pet"
        setupImageView()
        setupTextField()
        
    }
        
    func setupImageView(){
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = #colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1)
        imageView.layer.cornerRadius = imageView.frame.height/2
    }
    
    func setupTextField() {
        nameTextField.delegate = self
        birthdateTextView.delegate = self
        speciesTextField.delegate = self
         
    }
    
    @IBAction func selectImage(_ sender: Any){
        let alert = UIAlertController(title:"Pets", message: "Selecione uma foto ou tire uma foto do seu pet", preferredStyle: .actionSheet)
        let cameraButton = UIAlertAction(title: "Camera", style: .default) { _ in
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
            
        }
        alert.addAction(cameraButton)
        
        let libraryButton = UIAlertAction(title: "Biblioteca de Fotos", style: .default) { _ in
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        }
        alert.addAction(libraryButton)
        
        let cancelButton = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
        
        
    }
            
        
    @IBAction func addPet(_ sender: Any) {
    
    
        guard let name = nameTextField.text, name != "" else {
            presentMessage(message: "O campo de nome deve ser preenchido")
            return
        }
        guard let birthdate = birthdateTextView.text, birthdate != "" else {
            presentMessage(message: "O campo de data de nascimento deve ser preenchido")
            return
        }
        guard let especies = speciesTextField.text, especies != "" else {
            presentMessage(message: "O campo de espécie deve ser preenchido")
            return
        }
        var image = UIImage()
        if let petImage = imageView.image {
            image = petImage
        } else {
                image = #imageLiteral(resourceName: "pata")
        }
        let pet = Pet(petName: name, petSpecies: especies, petBirthdate: birthdate, petImage: image)
        petList.append(pet)
        presentMessage(message: "Pet Cadastrado com sucesso")
    }    
    func presentMessage(message: String) {
            let alert = UIAlertController(title: "Pets", message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        
    }
                
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        let image = info[.originalImage] as? UIImage
        imageView.image = image

    }
}
