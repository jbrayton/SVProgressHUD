//
//  PresentedViewController.swift
//  SVProgressHUD
//
//  Created by John Brayton on 8/19/17.
//  Copyright © 2017 EmbeddedSources. All rights reserved.
//

import UIKit
import SVProgressHUD

class PresentedViewController: UITableViewController {
    
    var textField: UITextField?
    var button: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.handleButtonTap()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "tap here"
        return cell
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        SVProgressHUD.setViewForExtension(self.view)
//        SVProgressHUD.setTapToFinishAutoDismiss(true)
//        
//        self.title = "Presented"
//        
//        self.view.backgroundColor = UIColor.white
//        
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(textField)
//        
//        self.view.addConstraint(textField.topAnchor.constraint(equalTo: self.topLayoutGuide.topAnchor, constant: 100))
//        self.view.addConstraint(textField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0))
//        self.view.addConstraint(textField.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0))
//        
//        
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Tap Here", for: .normal)
//        button.setTitleColor(UIColor.blue, for: .normal)
//        self.view.addSubview(button)
//        
//        self.view.addConstraint(button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20.0))
//        self.view.addConstraint(button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor))
//        
//        self.textField = textField
//        self.button = button
//        
//        textField.becomeFirstResponder()
//        
//        button.addTarget(self, action: #selector(handleButtonTap), for: .primaryActionTriggered)
//        
//    }
    
    func handleButtonTap() {
        print("at handleButtonTap")
        SVProgressHUD.setViewForExtension(self.view)
        SVProgressHUD.show(withStatus: "yo")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) { 
            SVProgressHUD.showSuccess(withStatus: "foo")
        }
    }
    
    

    
}
