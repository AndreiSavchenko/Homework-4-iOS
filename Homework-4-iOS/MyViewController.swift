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
    @IBOutlet weak var oneTwoLabel: UILabel!
    @IBOutlet weak var currTextLabel: UILabel!
    @IBOutlet weak var valueSlideLabel: UILabel!
    @IBOutlet weak var progressActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var plusMinusLabel: UILabel!
    @IBOutlet weak var funImageView: UIImageView!
    
    @IBAction func changeTextButton(_ sender: UIButton) {
        if changeTextLabel.text! == "Привет!" {
            changeTextLabel.textColor = .red
            changeTextLabel.text = "Hello!"
        } else {
            changeTextLabel.textColor = .green
            changeTextLabel.text = "Привет!"
        }
    }
    
    @IBAction func oneTwoSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            oneTwoLabel.text = "1"
        } else {
            oneTwoLabel.text = "2"
        }
    }
    
    @IBAction func currTextTextField(_ sender: UITextField) {
        currTextLabel.text = sender.text
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        valueSlideLabel.text = String(Int(sender.value))
    }
    
    @IBAction func changeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .lightGray
        }
    }
    
    @IBAction func progressButton(_ sender: UIButton) {
        progressActivityIndicatorView.startAnimating()
    }
    @IBAction func progressUpButton(_ sender: UIButton) {
        progressActivityIndicatorView.stopAnimating()
    }
    
    @IBAction func plusMinusStepper(_ sender: UIStepper) {
        plusMinusLabel.text = String(sender.value)
    }
    
    @IBAction func addImageButton(_ sender: UIButton) {
        funImageView.image = UIImage(named: "funimage")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
