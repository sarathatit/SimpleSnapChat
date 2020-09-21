//
//  UIDate+Extension.swift
//  SimpleSnap
//
//  Created by sarath kumar on 10/08/20.
//  Copyright © 2020 sarath kumar. All rights reserved.
//

import Foundation

extension Date {
    
    static func formateDateToString(date: Date) -> String {
        let formater = DateFormatter()
        formater.dateStyle = .medium
        formater.timeStyle = .none
        return formater.string(from: date)
    }
}
