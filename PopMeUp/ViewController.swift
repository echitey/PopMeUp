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
    
    @IBOutlet var popView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popView.layer.cornerRadius = 20
    }
    
    //Internal PopupView
    @IBAction func openInter(_ sender: Any) {
        self.popConstraint.constant = 0
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
            self.btnCancel.alpha = 0.85
        }
    }
    

    @IBAction func openBounce(_ sender: Any){
        self.popConstraint.constant = 0
        self.btnCancel.alpha = 0.85
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
 
    @IBAction func btnCancelAction(_ sender: Any) {
        self.btnCancel.alpha = 0
        self.popConstraint.constant = 1000
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
        
        popView.removeFromSuperview()
    }
    
    //Scene Dock
    @IBAction func sceneDockPop(_ sender: UIButton) {
        popView.center = view.center
        view.addSubview(popView)
        self.btnCancel.alpha = 0.85
    }
    
    //Scene Dock with Effect
    @IBAction func sceneDockPopEffect(_ sender: UIButton) {
        popView.center = view.center
        
        //Transform to give more effect
        popView.transform = CGAffineTransform(scaleX: 0.7, y: 1.3)
        view.addSubview(popView)
        
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.popView.transform = .identity
            self.btnCancel.alpha = 0.85
        })
    }
    
    
    //Animation on Scene Dock Popup Close
    @IBAction func popViewClose(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: { 
            self.btnCancel.alpha = 0
            self.popView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        }) { (succes) in
            self.popView.removeFromSuperview()
            self.popView.transform = .identity
        }
    }
}

