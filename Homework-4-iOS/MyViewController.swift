//
//  MyViewController.swift
//  Homework-4-iOS
//
//  Created by Alla on 11/14/18.
//  Copyright © 2018 AndreiSavchenko. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    
    @IBOutlet weak var changeLabel: UILabel!
    @IBAction func changeButton(_ sender: UIButton) {
        changeLabel.text = "new text"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
