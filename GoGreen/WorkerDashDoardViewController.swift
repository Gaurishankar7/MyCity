//
//  WorkerDashDoardViewController.swift
//  GoGreen
//
//  Created by Parvez Shaikh on 17/06/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class WorkerDashDoardViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.layer.cornerRadius = imgView.frame.size.width/2
        imgView1.layer.cornerRadius = imgView1.frame.size.width/2
        imgView2.layer.cornerRadius = imgView2.frame.size.width/2
        // Do any additional setup after loading the view.
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
