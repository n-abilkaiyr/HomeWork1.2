//
//  ViewController.swift
//  HomeWork1.2
//
//  Created by Abilkaiyr Nurzhan on 10/18/20.
//  Copyright © 2020 Abilkaiyr Nurzhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum  Light {
        case red
        case yellow
        case green
    }
    
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var toggleActionButton: UIButton!

    private var currentLight: Light?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = redColor.frame.size.width
        
        redColor.layer.cornerRadius = width / 2
        yellowColor.layer.cornerRadius = width / 2
        greenColor.layer.cornerRadius = width / 2
        toggleActionButton.layer.cornerRadius = 10
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
    }


    @IBAction func toggleActionButtonPressed() {
        
        if toggleActionButton.titleLabel?.text == "START" {
            toggleActionButton.setTitle("NEXT", for: .normal)
            currentLight = .red
            redColor.alpha = 1
            return
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            yellowColor.alpha = 1
            redColor.alpha = 0.3
        case .yellow:
            currentLight = .green
            greenColor.alpha = 1
            yellowColor.alpha = 0.3
        case .green:
            currentLight = .red
            redColor.alpha = 1
            greenColor.alpha = 0.3
        default:
            return
        }
    }
}

