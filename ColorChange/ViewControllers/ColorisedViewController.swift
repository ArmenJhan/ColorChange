//
//  ViewController.swift
//  ColorChange
//
//  Created by Armen Madoyan on 23.09.2022.
//

import UIKit

class ColorisedViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var delegate: ColorisedViewControllerDelegate!
    
    var setColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        redSlider.value = Float(setColor.redColor)
        greenSlider.value = Float(setColor.greenColor)
        blueSlider.value = Float(setColor.blueColor)
        redColorLabel.text = String(format: "%.2f", setColor.redColor)
        greenColorLabel.text = String(format: "%.2f", setColor.greenColor)
        blueColorLabel.text = String(format: "%.2f", setColor.blueColor)
        mainView.backgroundColor = setColor
    }

    @IBAction func slidersAction() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        
        setColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        mainView.backgroundColor = setColor
    }
    
    @IBAction func doneButtonAction() {
        delegate.getColor(for: setColor)
        dismiss(animated: true)
    }
}


extension UIColor {
    var redColor: CGFloat {
        CIColor(color: self).red
    }
    
    var greenColor: CGFloat {
        CIColor(color: self).green
    }
    
    var blueColor: CGFloat {
        CIColor(color: self).blue
    }
}
