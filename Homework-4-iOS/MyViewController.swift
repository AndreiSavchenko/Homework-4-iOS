//
//  MyViewController.swift
//  Homework-4-iOS
//
//  Created by Alla on 11/14/18.
//  Copyright © 2018 AndreiSavchenko. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    @IBOutlet weak var changeTextLabel: UILabel!
    @IBAction func buttonChangeButton(_ sender: UIButton) {
        if changeTextLabel.text! == "Привет!" {
            changeTextLabel.textColor = .red
            changeTextLabel.text = "Hello!"
        } else {
            changeTextLabel.textColor = .green
            changeTextLabel.text = "Привет!"
        }
    }
    
    @IBOutlet weak var oneTwoLabel: UILabel!
    @IBAction func oneTwoSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            oneTwoLabel.text = "1"
        } else {
            oneTwoLabel.text = "2"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
