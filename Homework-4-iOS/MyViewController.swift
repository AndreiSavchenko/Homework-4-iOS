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
    
    @IBOutlet weak var textFieldLabel: UILabel!
    @IBAction func textFieldTextField(_ sender: UITextField) {
        textFieldLabel.text = sender.text
    }
    
    @IBOutlet weak var slideLabel: UILabel!
    @IBAction func slideSlider(_ sender: UISlider) {
        slideLabel.text = String(Int(sender.value))
    }
    
    @IBAction func switchSwitch(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .gray
        }
    }
    
    @IBOutlet weak var progressActivityIndicatorView: UIActivityIndicatorView!
    @IBAction func progressButton(_ sender: UIButton) {
        progressActivityIndicatorView.startAnimating()
    }
    @IBAction func progressUpButton(_ sender: UIButton) {
        progressActivityIndicatorView.stopAnimating()
    }
    
    @IBOutlet weak var plusMinusLabel: UILabel!
    @IBAction func plusMinusStepper(_ sender: UIStepper) {
        plusMinusLabel.text = String(sender.value)
    }
    
    @IBOutlet weak var funImageView: UIImageView!
    @IBAction func imageButton(_ sender: UIButton) {
        funImageView.image = UIImage(named: "funimage")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
