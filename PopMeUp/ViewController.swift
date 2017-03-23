//
//  ViewController.swift
//  PopMeUp
//
//  Created by Yawo Echitey on 3/22/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var popConstraint: NSLayoutConstraint!

    @IBOutlet weak var btnCancel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func openInter(_ sender: Any) {
        self.popConstraint.constant = 0
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
            self.btnCancel.alpha = 0.85
        }
    }
    
    
    @IBAction func openBounce(_ sender: Any){
        self.popConstraint.constant = 0
        
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 0.2) {
            self.btnCancel.alpha = 0.85
        }
    }
 
    @IBAction func btnCancelAction(_ sender: Any) {
        self.btnCancel.alpha = 0
        self.popConstraint.constant = 1000
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
}

