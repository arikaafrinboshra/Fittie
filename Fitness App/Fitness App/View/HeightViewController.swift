//
//  HeightViewController.swift
//  Fitness App
//
//  Created by Arika Afrin Boshra on 10/5/20.
//  Copyright © 2020 Arika Afrin Boshra. All rights reserved.
//

import UIKit

class HeightViewController: UIViewController {

    @IBAction func heightBtnAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "BMI", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WeightViewController") as! WeightViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
