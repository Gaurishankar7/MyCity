//
//  ReportViewController.swift
//  GoGreen
//
//  Created by Gaurishankar Vibhute on 19/06/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit
import iOSDropDown

class ReportViewController: UIViewController {

    @IBOutlet weak var segmentCon: UISegmentedControl!
    @IBOutlet weak var txtDate: DropDown!
    @IBOutlet weak var txtVehicle: DropDown!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtVehicle.optionArray = ["BR06AB1212","BR06AB3212","BR06AB5412"]
        txtVehicle.optionIds = [1,2,3]
        
        
        txtDate.optionArray = ["19-June","18-June","17-June"]
        txtDate.optionIds = [1,2,3]
        
    }
   
    
    @IBAction func segment(_ sender: Any) {
        
        if segmentCon.selectedSegmentIndex == 0{
//            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TripLogViewController") as? TripLogViewController
//            self.navigationController?.pushViewController(vc!, animated: true)
            segmentCon.selectedSegmentIndex = 0
            self.navigationController?.popViewController(animated: true)
        }

        
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
