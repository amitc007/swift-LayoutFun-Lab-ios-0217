//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        // TODO: Create all the constraints (in code) for the various views
        //let multiplier = CGFloat(0.5)
        let screenSize:CGRect = UIScreen.main.bounds
        //let screenHt = screenSize.height
        let screenWt = screenSize.width
        
        //redView
        let redReduction = 0.25*screenWt
        redView.heightAnchor.constraint(equalToConstant: 0.5*screenWt).isActive = true
        //redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: multiplier).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        redView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: redReduction).isActive = true
        redView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -redReduction).isActive = true
        
        //orangeView
        let orangeReduction = 0.125*redReduction
        orangeView.heightAnchor.constraint(equalToConstant: 0.75*0.5*screenWt).isActive = true
        //orangeView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75*multiplier).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        orangeView.leftAnchor.constraint(equalTo: redView.leftAnchor, constant: orangeReduction ).isActive = true
        orangeView.rightAnchor.constraint(equalTo: redView.rightAnchor, constant: -orangeReduction).isActive = true
        
        //yellowView
        let yelloReduction = 0.125*orangeReduction
        yellowView.heightAnchor.constraint(equalToConstant: 0.75*0.75*0.5*screenWt).isActive = true
        //yellowView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: orangeView.topAnchor).isActive = true
        yellowView.leftAnchor.constraint(equalTo: orangeView.leftAnchor, constant: yelloReduction).isActive = true
        yellowView.rightAnchor.constraint(equalTo: orangeView.rightAnchor, constant: -yelloReduction).isActive = true
        
        //greenView
        let greenReduction = 0.125*yelloReduction
        greenView.heightAnchor.constraint(equalToConstant: 0.75*0.75*0.75*0.5*screenWt).isActive = true
        //greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.12).isActive = true
        greenView.bottomAnchor.constraint(equalTo: yellowView.topAnchor).isActive = true
        greenView.leftAnchor.constraint(equalTo: yellowView.leftAnchor, constant: greenReduction).isActive = true
        greenView.rightAnchor.constraint(equalTo: yellowView.rightAnchor, constant: -greenReduction).isActive = true
        
        //blueView
        let blueReduction = 0.125*greenReduction
        blueView.heightAnchor.constraint(equalToConstant: 0.75*0.75*0.75*0.75*0.5*screenWt).isActive = true
        //blueView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        blueView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
        blueView.leftAnchor.constraint(equalTo: greenView.leftAnchor, constant: blueReduction).isActive = true
        blueView.rightAnchor.constraint(equalTo: greenView.rightAnchor, constant: -blueReduction).isActive = true
        
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}
