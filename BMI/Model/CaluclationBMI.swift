//
//  CaluclationBMI.swift
//  BMI
//
//  Created by Madhu on 21/05/20.
//  Copyright © 2020 Madhu. All rights reserved.
//

import UIKit

struct CalculationBMI
{
    var bmi : BMI?
    
    func getBMIValue() ->String
    {
        let m = String(format: "%.1f", bmi?.value ?? 0.0)
        return m
    }
    
    func getAdvice() ->String
    {
        return bmi?.advice ?? "No advice"
    }
    
    
    func getColor() ->UIColor
    {
        return bmi?.colour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        
        let value = weight / (height * height)

        if (value < 18.5)
        {
            bmi = BMI(value: value, advice: "Eat more pies!", colour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if (value < 24.9)
        {
            bmi = BMI(value: value, advice: "Fit as a fiddle!", colour: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else
        {
            bmi = BMI(value: value, advice: "Eat less pies!", colour: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
}
