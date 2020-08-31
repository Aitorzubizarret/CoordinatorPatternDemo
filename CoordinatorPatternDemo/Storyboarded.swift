//
//  Storyboarded.swift
//  CoordinatorPatternDemo
//
//  Created by Aitor Zubizarreta on 28/08/2020.
//  Copyright © 2020 Aitor Zubizarreta. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        if #available(iOS 13, *) {
            // iOS 13 +
            return storyboard.instantiateViewController(identifier: id) as! Self
        } else {
            // iOS 12 -
            return storyboard.instantiateViewController(withIdentifier: id) as! Self
        }
        //
    }
}
