//
//  ViewFromCodeViewController.swift
//  Homework-4-iOS
//
//  Created by Alla on 11/15/18.
//  Copyright © 2018 AndreiSavchenko. All rights reserved.
//

import UIKit

class ViewFromCodeViewController: UIViewController {

    let slider: UISlider = UISlider(frame: CGRect(x: 80, y: 150, width: 250, height: 30))
    let myView: UIView = UIView(frame: CGRect(x: 80, y: 220, width: 250, height: 150))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(slider)
        slider.addTarget(self, action: #selector(valChanged), for: .valueChanged)
        myView.backgroundColor = .black
        view.addSubview(myView)
    }
    
    @objc func valChanged() {
        myView.alpha = 1 - CGFloat(slider.value)
        myView.layer.cornerRadius = CGFloat(slider.value/0.04)
    }
}



