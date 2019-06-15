//
//  ViewController.swift
//  password
//
//  Created by Manggala Tanri on 25/05/19.
//  Copyright © 2019 Manggala Tanri. All rights reserved.
//

import CommonCrypto
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passworldfield: UITextField!
    
    @IBAction func LoginPressed(_ sender: UIButton) {
        
        let password : String = passworldfield.text!
        
        if password .isEmpty{
            print("password must be input!")
        }else{
            print("password already input!")
        }
        
        if (password == "1234"){
            let Alert = UIAlertController(title: "Berhasil", message: "password yang anda masukan sesuai!", preferredStyle: .alert)
            let OkAction = UIAlertAction(title: "OK!", style: .default, handler: nil)
            Alert.addAction(OkAction)
            present(Alert, animated: true, completion: nil)
        } else {
            let Alert = UIAlertController(title: "Gagal", message: "password yang anda masukan tidak sesuai!", preferredStyle: .alert)
            let OkAction = UIAlertAction(title: "OK!", style: .default, handler: nil)
            Alert.addAction(OkAction)
            present(Alert, animated: true, completion: nil)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

