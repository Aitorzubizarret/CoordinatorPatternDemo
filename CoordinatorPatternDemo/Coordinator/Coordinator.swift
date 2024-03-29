//
//  Coordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Aitor Zubizarreta on 28/08/2020.
//  Copyright © 2020 Aitor Zubizarreta. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
    func goToFirstVC()
    func goToSecondVC()
}
