//
//  WeightViewController.swift
//  Fitness App
//
//  Created by Arika Afrin Boshra on 10/5/20.
//  Copyright © 2020 Arika Afrin Boshra. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBAction func weightBtnAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "BMI", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BmiViewController") as! BmiViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
