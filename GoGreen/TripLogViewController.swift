//
//  TripLogViewController.swift
//  GoGreen
//
//  Created by Gaurishankar Vibhute on 19/06/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit
import iOSDropDown

class TripLogViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var segmentCon: UISegmentedControl!
    @IBOutlet weak var txtTripNo: DropDown!
    @IBOutlet weak var txtVehicle: DropDown!
    @IBOutlet weak var txtSWId: DropDown!
    @IBOutlet weak var txtGreen: DropDown!
    @IBOutlet weak var txtBlue: DropDown!
    @IBOutlet weak var txtOther: DropDown!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtTripNo.delegate = self as UITextFieldDelegate
        
        
        txtTripNo.optionArray = ["1","2","3","4"]
        txtTripNo.optionIds = [1,2,3,4]
//        self.txtTripNo.isSearchEnable = false
        
        txtVehicle.optionArray = ["BR06AB1212","BR06AB3212","BR06AB5412"]
        txtVehicle.optionIds = [1,2,3]
        
        txtSWId.optionArray = ["BRM123","BRM124","BRM125"]
        txtSWId.optionIds = [1,2,3]
        
        txtBlue.optionArray = ["1","1.5","2","2.5","3"]
        txtBlue.optionIds = [1,2,3,4,5]
        
        txtGreen.optionArray = ["1","1.5","2","2.5","3"]
        txtGreen.optionIds = [1,2,3,4,5]
        
        txtOther.optionArray = ["1","1.5","2","2.5","3"]
        txtOther.optionIds = [1,2,3,4,5]
        
//        DropDown.showList()
    }
    
    @IBAction func srgment(_ sender: Any) {
        print(segmentCon.selectedSegmentIndex)
        
        if segmentCon.selectedSegmentIndex == 1{
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ReportViewController") as? ReportViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        segmentCon.selectedSegmentIndex = 0
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        
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
