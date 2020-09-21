//
//  SignUpPageTwoViewController.swift
//  SimpleSnap
//
//  Created by sarath kumar on 07/08/20.
//  Copyright © 2020 sarath kumar. All rights reserved.
//

import UIKit

class SignUpDOBViewController: UIViewController {
    
    @IBOutlet weak var dobTextField: UITextField!
    
    let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createDatePicker()
    }
    
    private func createDatePicker() {
        
        //toolbar
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //barbutton
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonAction))
        toolBar.setItems([doneBarButton], animated: true)
        
        //assign toolbar
        dobTextField.inputAccessoryView = toolBar
        
        //assign date picker to the textfield
        dobTextField.inputView = datePicker
        
        //datepicker mode
        datePicker.setYearValidation()
        datePicker.datePickerMode  = .date
        datePicker.addTarget(self, action: #selector(dateChanged(picker:)), for: .valueChanged)
        
    }
    
    // MARK: - Action Methods
    
    @objc func dateChanged(picker: UIDatePicker) {
        dobTextField.text = Date.formateDateToString(date: datePicker.date)
    }
    
    @objc func doneButtonAction() {
        self.view.endEditing(true)
    }
 
}
