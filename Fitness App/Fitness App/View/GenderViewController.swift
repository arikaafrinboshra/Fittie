//
//  ViewController.swift
//  Fitness App
//
//  Created by Arika Afrin Boshra on 10/5/20.
//  Copyright © 2020 Arika Afrin Boshra. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {

    @IBOutlet weak var maleBtn: UIButton!
    @IBAction func femaleBtnAction(_ sender: Any) {
        btnAction()
    }
    @IBAction func maleBtnAction(_ sender: Any) {
        btnAction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func btnAction(){
        let storyboard = UIStoryboard(name: "BMI", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AgeViewController") as! AgeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
}

