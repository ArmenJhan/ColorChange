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
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
    }

    @IBAction func slidersAction() {
        redColorView.text = String(format: "%.2f", redSlider.value)
        greenColorView.text = String(format: "%.2f", greenSlider.value)
        blueColorView.text = String(format: "%.2f", blueSlider.value)
        
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}
