//
//  SelectAreaViewController.swift
//  GoGreen
//
//  Created by Gaurishankar Vibhute on 18/06/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class SelectAreaViewController: UIViewController {

    @IBOutlet weak var viewArea: UIView!
    @IBOutlet weak var viewArea1: UIView!
    @IBOutlet weak var viewArea2: UIView!
    @IBOutlet weak var viewArea4: UIView!
    @IBOutlet weak var btnAreaBram: UIButton!
    
    @IBOutlet weak var viewArea3: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewArea.layer.cornerRadius = 10.0
        viewArea1.layer.cornerRadius = 10.0
        viewArea2.layer.cornerRadius = 10.0
//        viewArea3.layer.cornerRadius = 10.0
        viewArea4.layer.cornerRadius = 10.0
        btnAreaBram.layer.cornerRadius = 10.0
        
        
        
    }
    

    @IBAction func btnArea(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
