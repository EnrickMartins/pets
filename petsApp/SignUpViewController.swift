//
//  SignUpViewController.swift
//  petsApp
//
//  Created by Enrick on 30/03/22.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var especiesTextField: UITextField!
    @IBOutlet weak var birthDayTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var selectImageView: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    
    func setupTextField () {
              
        
        func goToSignUp(_ sender: Any) {
           
        }
        
    }
    }
