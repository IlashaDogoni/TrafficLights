//
//  ViewController.swift
//  TrafficLights
//
//  Created by Ilya Kokorin on 10.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstLight: UIView!
    @IBOutlet var secondLight: UIView!
    @IBOutlet var thirdLight: UIView!
    private var isOn : CGFloat = 1
    private var isOff: CGFloat = 0.3
    
    @IBOutlet var ToggleButton: UIButton!
    override func viewDidLoad() {
        view.backgroundColor = .black
        firstLight.layer.cornerRadius = firstLight.frame.width / 2
        firstLight.alpha = isOn
        secondLight.layer.cornerRadius = secondLight.frame.width / 2
        secondLight.alpha = isOff
        thirdLight.layer.cornerRadius = thirdLight.frame.width / 2
        thirdLight.alpha = isOff
        super.viewDidLoad()
    }
    
    @IBAction func toggleButton() {
        ToggleButton.setTitle("NEXT", for: .normal)
        if firstLight.alpha == isOn{
            firstLight.alpha = isOff
            secondLight.alpha = isOn
        } else if secondLight.alpha == isOn{
            secondLight.alpha = isOff
            thirdLight.alpha = isOn
        }else if thirdLight.alpha == isOn{
            thirdLight.alpha = isOff
            firstLight.alpha = isOn
        }
    }
}

