//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Chris Jones on 2017-02-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var navBarView: UIView!
    @IBOutlet weak var navBarHeightConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plusButton(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.8, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
            if self.navBarHeightConstraint.constant == 200 {
                self.navBarHeightConstraint.constant = 66
                self.plusButton.transform = CGAffineTransform(rotationAngle: (CGFloat)(0))
            } else {
                self.plusButton.transform = CGAffineTransform(rotationAngle: -(CGFloat)(M_PI_4))
                self.navBarHeightConstraint.constant = 200
            }
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    
        print("plus icon pushed")
    }

}

