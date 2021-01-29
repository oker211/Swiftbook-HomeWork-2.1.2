//
//  ViewController.swift
//  HomeWork 2.1.2
//
//  Created by Филипп Слабодецкий on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- Enum
    
    enum Color {
        case red
        case yellow
        case green
    }
    
    // MARK:- IB Outlet
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var propertyButton: UIButton!
    
    // MARK:- Propertys
    
    var color: Color = .red
    
    let alphaMin: CGFloat = 0.3
    let alphaMax: CGFloat = 1
    let cornerRadiusButton: CGFloat = 15
    let cornerRadiusView: CGFloat = 75
    
    // MARK:- Override Metods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = alphaMin
        yellowView.alpha = alphaMin
        greenView.alpha = alphaMin
        
        
        redView.layer.cornerRadius = cornerRadiusView
        yellowView.layer.cornerRadius = cornerRadiusView
        greenView.layer.cornerRadius = cornerRadiusView
        
        propertyButton.setTitle("Start", for: .normal)
        propertyButton.layer.cornerRadius = cornerRadiusButton
        
    }
    
    // MARK:- IB Action
    
    @IBAction func startButton() {
        tapButton()
    }
    
    @IBAction func offButton() {
        viewOff()
    }
    
    // MARK:- Methods
    
    private func tapButton() {
        
        propertyButton.setTitle("Next", for: .normal)
        
        switch color {
        case .red:
            greenView.alpha = alphaMin
            redView.alpha = alphaMax
            color = .yellow
            
        case .yellow:
            redView.alpha = alphaMin
            yellowView.alpha = alphaMax
            color = .green
            
        case .green:
            yellowView.alpha = alphaMin
            greenView.alpha = alphaMax
            color = .red
        }
    }
    
    private func viewOff() {
        
        redView.alpha = alphaMin
        yellowView.alpha = alphaMin
        greenView.alpha = alphaMin
        
        propertyButton.setTitle("Start", for: .normal)
    }
    
}




