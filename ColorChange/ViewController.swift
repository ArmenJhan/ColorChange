//
//  ViewController.swift
//  ColorChange
//
//  Created by Armen Madoyan on 23.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var redColorView: UILabel!
    @IBOutlet var greenColorView: UILabel!
    @IBOutlet var blueColorView: UILabel!
    
    private var redValue: Float = 0
    private var greenValue: Float = 0
    private var blueValue: Float = 0
    
    override func viewWillLayoutSubviews() {
        redColorView.text = String(format: "%.2f", redValue)
        greenColorView.text = String(format: "%.2f", greenValue)
        blueColorView.text = String(format: "%.2f", blueValue)
        mainView.layer.cornerRadius = 20
       
        mainView.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
    }

    @IBAction func redSliderAction(_ sender: UISlider) {
        redColorView.text = String(format: "%.2f", sender.value)
        
        if let input = Float(redColorView.text!) {
            redValue = input
        }
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenColorView.text = String(format: "%.2f", sender.value)
        
        if let input = Float(greenColorView.text!) {
            greenValue = input
        }
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueColorView.text = String(format: "%.2f", sender.value)
        
        if let input = Float(blueColorView.text!) {
            blueValue = input
        }
    }
}
