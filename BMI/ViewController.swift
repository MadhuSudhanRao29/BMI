//
//  ViewController.swift
//  BMI
//
//  Created by Madhu on 21/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var bmi = CalculationBMI()
    
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider)
    {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text  = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider)
    {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text  = "\(weight)kgs"
        
    }
    
    
    
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmi.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "madhu", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "madhu"
        {
            let destinationVC =  segue.destination as! SecondViewController
            
            destinationVC.value    = bmi.getBMIValue()
            destinationVC.advice   = bmi.getAdvice()
            destinationVC.color    = bmi.getColor()
            
            
            
        }
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}

