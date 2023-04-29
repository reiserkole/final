//
//  LoginInfoViewController.swift
//  Final
//
//  Created by Kole Reiser on 4/27/23.
//

import UIKit

class LoginInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func infoButton(_ sender: Any) {
        showAlert()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "IncorrectInformation", message: "If you do not have an account select the guest order option.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: {action in print("Pressed ok")}))
        present(alert, animated: true)
    }
    

}
