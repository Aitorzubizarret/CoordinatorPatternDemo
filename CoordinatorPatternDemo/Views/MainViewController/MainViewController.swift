//
//  MainViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Aitor Zubizarreta on 31/1/23.
//  Copyright © 2023 Aitor Zubizarreta. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var goToFirstVCButton: UIButton!
    @IBAction func goToFirstVCButtonTapped(_ sender: Any) {
        goToFirstViewController()
    }
    @IBOutlet weak var goToSecondVCButton: UIButton!
    @IBAction func goToSecondVCButtonTapped(_ sender: Any) {
        goToSecondViewController()
    }
    
    // MARK: - Properties
    
    weak var coordinator: MainCoordinator?
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        print("MainViewController")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func goToFirstViewController() {
        coordinator?.goToFirstVC()
    }
    
    private func goToSecondViewController() {
        coordinator?.goToSecondVC()
    }
    
}
