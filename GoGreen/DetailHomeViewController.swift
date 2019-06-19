//
//  DetailHomeViewController.swift
//  GoGreen
//
//  Created by Gaurishankar Vibhute on 18/06/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class DetailHomeViewController: UIViewController {

    @IBOutlet weak var btnSegre: UIButton!
    @IBOutlet weak var btnUnSegre: UIButton!
    @IBOutlet weak var btnPart: UIButton!
    @IBOutlet weak var btnNoWest: UIButton!
    @IBOutlet weak var btnLocked: UIButton!
    @IBOutlet weak var imgBadge: UIImageView!
    @IBOutlet weak var lblerror: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var viewForDetail: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewForDetail.layer.cornerRadius = 10.0
        viewForDetail.layer.masksToBounds = true
        
        if strUSerName == "Prashant Kishore"{
            imgBadge.image = UIImage(named: "warning")
            lblerror.isHidden = false
            lblName.text = "Prashant Kishore"
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
    
    @IBAction func btnSegrePress(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.btnSegre.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.45, options: UIView.AnimationOptions.curveEaseIn, animations: { () -> Void in
            self.btnSegre.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
        }, completion: nil)
        
        btnSegre.alpha = 1.0
        
        btnUnSegre.alpha = 0.2
        btnPart.alpha = 0.2
        btnLocked.alpha = 0.2
        btnNoWest.alpha = 0.2
    }
    @IBAction func btnUnSegre(_ sender: Any) {
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.btnUnSegre.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.45, options: UIView.AnimationOptions.curveEaseIn, animations: { () -> Void in
            self.btnUnSegre.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
        }, completion: nil)
        
        btnUnSegre.alpha = 1.0
        
        btnSegre.alpha = 0.2
        btnPart.alpha = 0.2
        btnLocked.alpha = 0.2
        btnNoWest.alpha = 0.2
    }
    
    
    
    @IBAction func btnPartPress(_ sender: Any) {
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.btnPart.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.45, options: UIView.AnimationOptions.curveEaseIn, animations: { () -> Void in
            self.btnPart.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
        }, completion: nil)
        
        btnPart.alpha = 1.0
        
        btnUnSegre.alpha = 0.2
        btnSegre.alpha = 0.2
        btnLocked.alpha = 0.2
        btnNoWest.alpha = 0.2
    }
    
    @IBAction func btnNOWestPress(_ sender: Any) {
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.btnNoWest.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.45, options: UIView.AnimationOptions.curveEaseIn, animations: { () -> Void in
            self.btnNoWest.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
        }, completion: nil)
        
        btnNoWest.alpha = 1.0
        
        btnUnSegre.alpha = 0.2
        btnPart.alpha = 0.2
        btnLocked.alpha = 0.2
        btnSegre.alpha = 0.2
    }
    
    
    @IBAction func btnLockedPress(_ sender: Any) {
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.btnLocked.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.45, options: UIView.AnimationOptions.curveEaseIn, animations: { () -> Void in
            self.btnLocked.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2.0)
        }, completion: nil)
        
        btnLocked.alpha = 1.0
        
        btnUnSegre.alpha = 0.2
        btnPart.alpha = 0.2
        btnSegre.alpha = 0.2
        btnNoWest.alpha = 0.2
    }
    
    
    
    @IBAction func btnContinuePress(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "WorkerDashDoardViewController") as? WorkerDashDoardViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnEndOfDayReport(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "EndOfDayViewController") as? EndOfDayViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
}
