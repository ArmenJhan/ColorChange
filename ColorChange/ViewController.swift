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
    
    var redValue: CGFloat = 0
    var greenValue: CGFloat = 0
    var blueValue: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   

    @IBAction func redSliderAction(_ sender: UISlider) {
        redColorView.text = String(format: "%.2f", sender.value)
       
        
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenColorView.text = String(format: "%.2f", sender.value)
        
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueColorView.text = String(format: "%.2f", sender.value)

    }
}
