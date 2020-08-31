//
//  ViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Aitor Zubizarreta on 28/08/2020.
//  Copyright © 2020 Aitor Zubizarreta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    // UI
    @IBAction func firstButtonTapped(_ sender: Any) {
        coordinator?.goToFirst()
    }
    @IBAction func secondButtonTapped(_ sender: Any) {
        coordinator?.goToSecond()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

