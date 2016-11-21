//
//  ViewController.swift
//  Simple App
//
//  Created by John Brayton on 9/26/16.
//  Copyright © 2016 EmbeddedSources. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {
    
    var textField: UITextField?
    var button: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.setViewForExtension(self.view)
        SVProgressHUD.setTapToFinishAutoDismiss(true)
        
        self.title = "ViewController"
        
        self.view.backgroundColor = UIColor.white
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textField)
        
        self.view.addConstraint(textField.topAnchor.constraint(equalTo: self.topLayoutGuide.topAnchor, constant: 100))
        self.view.addConstraint(textField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0))
        self.view.addConstraint(textField.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0))
        

        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap Here", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        self.view.addConstraint(button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20.0))
        self.view.addConstraint(button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor))

        self.textField = textField
        self.button = button
        
        textField.becomeFirstResponder()
        
        button.addTarget(self, action: #selector(handleButtonTap), for: .primaryActionTriggered)
        
    }

    func handleButtonTap() {
        SVProgressHUD.showSuccess(withStatus: "success")
    }


}

