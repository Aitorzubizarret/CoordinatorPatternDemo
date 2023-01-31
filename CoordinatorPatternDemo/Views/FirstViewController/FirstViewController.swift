//
//  FirstViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Aitor Zubizarreta on 31/1/23.
//  Copyright © 2023 Aitor Zubizarreta. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Properties
    
    weak var coordinator: MainCoordinator?
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "First VC"
    }
    
}
