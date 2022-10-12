//
//  MainViewController.swift
//  ColorChange
//
//  Created by Armen Madoyan on 11.10.2022.
//

import UIKit

protocol ColorisedViewControllerDelegate {
    func getColor(for color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorisedVC = segue.destination as? ColorisedViewController else { return }
        colorisedVC.setColor = view.backgroundColor
        colorisedVC.delegate = self
    }
}

extension MainViewController: ColorisedViewControllerDelegate {
    func getColor(for color: UIColor) {
        view.backgroundColor = color
    }
}

