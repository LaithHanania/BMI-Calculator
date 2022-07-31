//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Laith Hanania on 2022-07-31.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / height * height
        
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.cyan)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        let bmi = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Eat more pies"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.green
    }
}
