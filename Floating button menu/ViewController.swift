//
//  ViewController.swift
//  Floating button menu
//
//  Created by Mohit Agrawal on 04/05/20.
//  Copyright © 2020 Mohit Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var mobileButton: UIButton!
    @IBOutlet weak var incognitoButton: UIButton!
    @IBOutlet weak var mailButton: UIButton!
    
    
    var incognitoButtonCenter: CGPoint!
    var mobileButtonCenter: CGPoint!
    var mailButtonCenter: CGPoint!
    
    var isButtonMenuOpen = false

    override func viewDidLoad() {
        super.viewDidLoad()
        moreButton.applyShadow()
        incognitoButton.applyShadow()
        mobileButton.applyShadow()
        mailButton.applyShadow()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        incognitoButtonCenter = incognitoButton.center
        mobileButtonCenter = mobileButton.center
        mailButtonCenter = mailButton.center
    }

    @IBAction func didClickMoreButton(_ sender: UIButton) {
        if isButtonMenuOpen {
            UIView.animate(withDuration: 0.3) {
                self.incognitoButton.center = self.moreButton.center
                self.mobileButton.center = self.moreButton.center
                self.mailButton.center = self.moreButton.center
                
                self.incognitoButton.alpha = 0
                self.mobileButton.alpha = 0
                self.mailButton.alpha = 0
            }
            
            isButtonMenuOpen = false
        } else {
            UIView.animate(withDuration: 0.3) {
                self.incognitoButton.center = self.incognitoButtonCenter
                self.mobileButton.center = self.mobileButtonCenter
                self.mailButton.center = self.mailButtonCenter
                
                self.incognitoButton.alpha = 1
                self.mobileButton.alpha = 1
                self.mailButton.alpha = 1
            }
            isButtonMenuOpen = true
        }
    }
}

extension UIButton {
    func applyShadow() {
        layer.shadowOpacity = 0.6
    }
}

