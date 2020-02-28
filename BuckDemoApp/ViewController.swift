//
//  ViewController.swift
//  BuckDemoApp
//
//  Created by Douglas Alexandre Barros Taquary on 23/01/20.
//  Copyright © 2020 Douglas Taquary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    public var text: UILabel = {
        let l = UILabel()
        
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = NSLocalizedString("Hello Buck! 🍺", comment: "Text on main view controller")
        l.tintColor = .black

        return l
    
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(text)
        
        text.sizeToFit()
        text.center = view.center
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

