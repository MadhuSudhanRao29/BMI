//
//  SecondViewController.swift
//  BMI
//
//  Created by Madhu on 21/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    
    var value    : String?
    var advice   : String?
    var color    : UIColor?
    
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()

        bmiValue.text         = value
        adviceLabel.text      = advice
        view.backgroundColor  = color
    }
    

    

}
