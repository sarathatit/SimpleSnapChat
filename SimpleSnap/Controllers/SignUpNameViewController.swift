//
//  SignUpPageOneViewController.swift
//  SimpleSnap
//
//  Created by sarath kumar on 07/08/20.
//  Copyright © 2020 sarath kumar. All rights reserved.
//

import UIKit

class SignUpNameViewController: UIViewController {
    
    @IBOutlet weak var privacyPolicyTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    private func setupUI() {
        // Make HyperLink
        let font = privacyPolicyTextView.font
        let textColor = privacyPolicyTextView.textColor
        let text = privacyPolicyTextView.text ?? ""
        let path = "https://www.google.com"
        
        let attributedStringPrivacyPolicy = NSAttributedString.makeHyperLink(for: path, in: text, as: "Privacy Policy")
        privacyPolicyTextView.attributedText = attributedStringPrivacyPolicy
        privacyPolicyTextView.font = font
        privacyPolicyTextView.textColor = textColor
        
    }
    
    

}
