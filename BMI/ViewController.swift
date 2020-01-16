//
//  ViewController.swift
//  BMI
//
//  Created by guntex01 on 1/14/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var kgTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightTextField.placeholder = " nhập vào chiều cao"
        kgTextField.placeholder = " nhập vào cân nặng"
        
    }

    @IBAction func bmiButton(_ sender: Any) {
        let h = Float(heightTextField.text ?? "0") ?? 0
        let w = Float(kgTextField.text ?? "0") ?? 0
        var BMI = 0
        BMI = Int(Float(w/(h*h)))
        if BMI < Int(18.5){
            bmiLabel.text = "thiếu cân "
        }
        else if BMI > Int(18.5) && BMI < Int(22.99){
            bmiLabel.text = "bình thường "
        }
        else if BMI > 23 && BMI < Int(24.99){
            bmiLabel.text = "thừa cân "
        }
        else if BMI >= 25 {
            bmiLabel.text = "béo phí "
        }
        else if BMI > 25 && BMI < Int(29.99){
            bmiLabel.text = "béo phì độ I "
        }
        else if BMI > 30 && BMI < Int(39.99){
            bmiLabel.text = "béo phì độ II "
        }
        else  {
            bmiLabel.text = "béo phì độ III "
        }
        }
        
    }
    



