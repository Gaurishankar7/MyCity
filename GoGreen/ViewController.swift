//
//  ViewController.swift
//  GoGreen
//
//  Created by Parvez Shaikh on 17/06/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit
import iOSDropDown

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtLogInAs: DropDown!
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        txtLogInAs.optionArray = ["Sanitation Worker","Municipal Commissioner/Administrator"]
        txtLogInAs.optionIds = [1,2]
        
        txtUserName.delegate = self
        txtPassword.delegate = self
    
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    @IBAction func btnLoginPress(_ sender: Any) {
        
//        WorkerDashDoardViewController
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "WorkerDashDoardViewController") as? WorkerDashDoardViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

