//
//  MainCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Aitor Zubizarreta on 28/08/2020.
//  Copyright © 2020 Aitor Zubizarreta. All rights reserved.
//

import Foundation
import UIKit

final class MainCoordinator {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController
    
    // MARK: - Methods
    
    init(navigationController: UINavigationController) {
        print("MainCoordinator - Init")
        self.navigationController = navigationController
    }
    
}

// MARK: - Coordinator

extension MainCoordinator: Coordinator {
    
    func start() {
        print("MainCoordinator - Start")
        let mainVC = MainViewController()
        mainVC.coordinator = self
        navigationController.pushViewController(mainVC, animated: false)
    }
    
    func goToFirstVC() {
        let firstVC = FirstViewController()
        firstVC.coordinator = self
        navigationController.pushViewController(firstVC, animated: true)
    }
    
    func goToSecondVC() {
        let secondVC = SecondViewController()
        secondVC.coordinator = self
        navigationController.pushViewController(secondVC, animated: true)
    }
    
}
