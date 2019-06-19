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
        
        txtLogInAs.optionArray = ["Sanitation Worker","Administrator","PC Manager"]
        txtLogInAs.optionIds = [1,2,3]
        
        txtUserName.delegate = self
        txtPassword.delegate = self
        
        print("data is \(String(describing: txtLogInAs.text))")
    
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("data is \(String(describing: txtLogInAs.text))")
        return true
    }
    

    @IBAction func btnLoginPress(_ sender: Any) {
        
         var strloginstatus = txtLogInAs.text
        if strloginstatus == "PC Manager"{
            print("login as PC Manager")
            
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TripLogViewController") as? TripLogViewController
            self.navigationController?.pushViewController(vc!, animated: true)

            
        }else{
    //        WorkerDashDoardViewController
            print("data is \(String(describing: txtLogInAs.text))")
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "WorkerDashDoardViewController") as? WorkerDashDoardViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
}

