//
//  ViewController.swift
//  Example
//
//  Created by Nathan Tannar on 11/14/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit
import DynamicTabBarController

class ViewController: UIViewController {
    
    lazy var addButton: UIButton = { [unowned self] in
        let button = UIButton()
        button.setTitle("Add ViewController", for: .normal)
        button.addTarget(self, action: #selector(ViewController.addVC), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    lazy var deleteButton: UIButton = { [unowned self] in
        let button = UIButton()
        button.setTitle("Delete ViewController", for: .normal)
        button.addTarget(self, action: #selector(ViewController.deleteVC), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    lazy var toastButton: UIButton = { [unowned self] in
        let button = UIButton()
        button.setTitle("Toast Network Alert", for: .normal)
        button.addTarget(self, action: #selector(ViewController.toast), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    @objc
    func addVC() {
        let newVC = ViewController()
        newVC.title =  "New VC"
        newVC.view.backgroundColor = .black
        self.dynamicTabBarController?.addViewController(newVC, animated: true)
    }
    
    @objc
    func deleteVC() {
        guard let currentIndex = self.dynamicTabBarController?.currentIndex else { return }
        self.dynamicTabBarController?.removeViewController(at: currentIndex, animated: true)
    }
    
    @objc
    func toast() {
        self.dynamicTabBarController?.trayView.backgroundColor = .red
        self.dynamicTabBarController?.toastAlert(text: "You appear to be offline", font: UIFont.boldSystemFont(ofSize: 14), duration: 3, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(addButton)
        view.addSubview(deleteButton)
        view.addSubview(toastButton)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        deleteButton.addConstraints(addButton.bottomAnchor, left: addButton.leftAnchor, bottom: nil, right: addButton.rightAnchor)
        toastButton.addConstraints(deleteButton.bottomAnchor, left: addButton.leftAnchor, bottom: nil, right: addButton.rightAnchor)
    }
    
}
