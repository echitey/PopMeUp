//
//  PopViewController.swift
//  PopMeUp
//
//  Created by Yawo Echitey on 3/22/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {
    
    @IBOutlet weak var popView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        popView.layer.cornerRadius = 10
        popView.layer.masksToBounds = true
    }
    
    @IBAction func btnPressed(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }

}
