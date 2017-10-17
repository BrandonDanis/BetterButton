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
        btn.theme = .Green
        btn.setTitle("Enter", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(mainButton)
        
        ApplyConstraints()
    }

    private func ApplyConstraints() {
        
        mainButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        mainButton.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        mainButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.45).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

