//
//  ViewController.swift
//  Weather‘s Colour
//
//  Created by perona on 30/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    let colorWell: UIColorWell = {
        let colorWell = UIColorWell()
        colorWell.supportsAlpha = true
        colorWell.selectedColor = .systemIndigo
        colorWell.title = "Colour Well"
        
        return colorWell
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        view.addSubview(colorWell)
        
        colorWell.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        colorWell.frame = CGRect(x: 20,
                                 y: view.safeAreaInsets.top,
                                 width: view.frame.size.width-40,
                                 height: 350)
    }
    
    @objc private func colorChanged(){
        view.backgroundColor = colorWell.selectedColor
    }
}

