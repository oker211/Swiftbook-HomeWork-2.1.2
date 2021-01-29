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
    
    private var color: Color = .red
    private let alphaMin: CGFloat = 0.3
    private let alphaMax: CGFloat = 1
    
    // MARK:- Override Metods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        propertyButton.setTitle("Start", for: .normal)
        propertyButton.layer.cornerRadius = 15
        
        redView.alpha = alphaMin
        yellowView.alpha = alphaMin
        greenView.alpha = alphaMin
    }
    
    override func viewWillLayoutSubviews() {
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
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
        
        color = .red
        
        redView.alpha = alphaMin
        yellowView.alpha = alphaMin
        greenView.alpha = alphaMin
        
        propertyButton.setTitle("Start", for: .normal)
    }
    
}




