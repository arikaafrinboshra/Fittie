//
//  AgeViewController.swift
//  Fitness App
//
//  Created by Arika Afrin Boshra on 10/5/20.
//  Copyright © 2020 Arika Afrin Boshra. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController {
    
    let agePickerView = UIPickerView()
    let year: [String] = ["2020",
                          "2019",
                          "2018",
                          "2017"]
    
    @IBOutlet weak var ageTextField: UITextField!
    @IBAction func ageBtnAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "BMI", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HeightViewController") as! HeightViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker()
        //toolBar()
    }
    
    
}


extension AgeViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func picker() {
        
        agePickerView.delegate = self
        ageTextField.inputView = agePickerView
        agePickerView.backgroundColor = .white
    }
    
    func toolBar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AgeViewController.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: true)
        toolBar.isUserInteractionEnabled = true
        toolBar.barTintColor = .white
        toolBar.tintColor = .black
        
        ageTextField.inputAccessoryView = toolBar
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return year.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return year[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ageTextField.text = year[row]
        
    }
}
