//
//  ViewController.swift
//  HomeWork 2.1.2
//
//  Created by Филипп Слабодецкий on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    var height: CGFloat = 0
    var width: CGFloat = 0
    
  
    
    
    // MARK:- Enum
    
    enum Color {
        case red
        case yellow
        case green
    }
    
    // MARK:- Override Metods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = alphaMin
        yellowView.alpha = alphaMin
        greenView.alpha = alphaMin
        
        height = redView.frame.size.height / 2
        width = redView.frame.size.width / 2
        
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
        propertyButton.setTitle("Start", for: .normal)
        propertyButton.layer.cornerRadius = cornerRadiusButton
        
    }
    
    // MARK:- IB Action
    
    @IBAction func startButton() {
        tapButton()
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
    
}




