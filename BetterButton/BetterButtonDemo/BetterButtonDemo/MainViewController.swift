//
//  ViewController.swift
//  BetterButtonDemo
//
//  Created by Brandon Danis on 2017-10-16.
//  Copyright © 2017 Brandon Danis. All rights reserved.
//

import UIKit
import BetterButton

class MainViewController: UIViewController {

    let mainButton : BetterButton = {
        let btn = BetterButton(frame: CGRect(x: 50.0, y: 50.0, width: 200.0, height: 40.0))
        btn.style = .Rounded
        btn.setTitle("Enter", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let shakeButton : BetterButton = {
        let btn = BetterButton(frame: CGRect(x: 0, y: 0, width: 200.0, height: 40.0))
        btn.style = .Square
        btn.setTitle("Shake", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(MainViewController.ShakeMainButton), for: .touchUpInside)
        return btn
    }()
    
    let pulseButton : BetterButton = {
        let btn = BetterButton(frame: CGRect(x: 0, y: 0, width: 200.0, height: 40.0))
        btn.style = .Square
        btn.setTitle("Grow", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(MainViewController.PulseMainButton), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(mainButton)
        self.view.addSubview(shakeButton)
        self.view.addSubview(pulseButton)
        
        ApplyConstraints()
    }

    private func ApplyConstraints() {
        
        mainButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        mainButton.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        mainButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.45).isActive = true
        
        shakeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        shakeButton.centerYAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -25).isActive = true
        shakeButton.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        shakeButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.90).isActive = true
        
        pulseButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        pulseButton.bottomAnchor.constraint(equalTo: self.shakeButton.topAnchor, constant: -5).isActive = true
        pulseButton.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        pulseButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.90).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction private func ShakeMainButton(sender: UIButton){
        mainButton.shake(0.40)
    }
    
    @IBAction func PulseMainButton(sender: UIButton){
        mainButton.rippleButton()
    }
    
}

