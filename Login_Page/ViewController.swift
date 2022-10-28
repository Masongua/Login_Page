//
//  ViewController.swift
//  Login_Page
//
//  Created by 5e on 10/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    
    @IBAction func passwordAct(_ sender: Any) {
        performSegue(withIdentifier: "userNameAndPassword", sender: sender)
        
    }
    
    
    @IBAction func usernameAct(_ sender: Any) {
        performSegue(withIdentifier: "userNameAndPassword", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
        guard let sender = sender as? UIButton else {
            return
        }
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    
    
    
}

