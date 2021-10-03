//
//  ViewController.swift
//  PlanYourDay
//
//  Created by Kovalyov Dmitry on 30.09.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    func createNavController(vc: UIViewController, itemName: String, itemImge: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName,
                                image: UIImage(systemName: itemImge)?.withAlignmentRectInsets(.init(top: 10,
                                                                                                    left: 0,
                                                                                                    bottom: 0,
                                                                                                    right: 0)),
                                tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        
        return navController
    }
}

