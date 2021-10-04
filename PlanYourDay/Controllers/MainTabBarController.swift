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
        
        view.backgroundColor = .white

        setupTabBar()
    }
    
    func setupTabBar() {
        
        let scheduleViewController = createNavController(vc: ScheduleViewController(),
                                                         itemName: "Schedule",
                                                         itemIamge: "calendar.badge.clock")
        
        let tasksViewController = createNavController(vc: TasksViewController(),
                                                         itemName: "Tasks",
                                                         itemIamge: "checkmark.rectangle")
        
        let ideasViewController = createNavController(vc: IdeasViewController(),
                                                         itemName: "Ideas",
                                                         itemIamge: "text.badge.plus")
        
        viewControllers = [scheduleViewController, tasksViewController, ideasViewController]
    }
    
    
    func createNavController(vc: UIViewController, itemName: String, itemIamge: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName,
                                image: UIImage(systemName: itemIamge)?.withAlignmentRectInsets(.init(top: 10,
                                                                                                    left: 0,
                                                                                                    bottom: 0,
                                                                                                    right: 0)),
                                tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
    }
}

