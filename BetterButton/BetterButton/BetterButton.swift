//
//  BetterButton.swift
//  BetterButton
//
//  Created by Brandon Danis on 2017-10-16.
//  Copyright © 2017 Brandon Danis. All rights reserved.
//

import UIKit

public enum BeautifulButtonTheme : Int {
    case Red
    case Blue
    case Green
}

public class BetterButton: UIButton {

    private let redAccent : UIColor = UIColor(red:0.75, green:0.23, blue:0.19, alpha:1.00)
    private let blueAccent : UIColor = UIColor(red:0.20, green:0.60, blue:0.86, alpha:1.00)
    private let greenAccent : UIColor = UIColor(red:0.22, green:0.79, blue:0.45, alpha:1.00)
    
    private var buttonHightlightColor : UIColor = UIColor(red:0.25, green:0.65, blue:0.89, alpha:1.00)
    private var buttonLabelColor : UIColor = UIColor.white
    private var cornerRadius : CGFloat = 20.0
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = false
        backgroundColor = blueAccent
        
        titleLabel!.textAlignment = NSTextAlignment.center
        titleLabel!.textColor = buttonLabelColor
    }
    
    required public init(coder: NSCoder) {
        super.init(coder: coder)!
    }
    
    public var theme : BeautifulButtonTheme = .Blue {
        didSet {
            updateTheme(theme: theme)
        }
    }
    
    private func updateTheme(theme: BeautifulButtonTheme) {
        print("Updating theme: ", theme)
        switch theme{
        case .Red:
            self.backgroundColor = redAccent
            break
        case .Blue:
            self.backgroundColor = blueAccent
            break;
        case .Green:
            self.backgroundColor = greenAccent
            break;
        }
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: { (bool) in
            
        })
    }
    
    public func shake() {
        print("Attempting to shake")
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.75
        animation.values = [-15.0, 15.0, -15.0, 15.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
