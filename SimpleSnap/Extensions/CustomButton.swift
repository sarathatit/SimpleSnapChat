//
//  UIButton+Extension.swift
//  SimpleSnap
//
//  Created by sarath kumar on 07/08/20.
//  Copyright © 2020 sarath kumar. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    open override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.pinkColor
    }
}
