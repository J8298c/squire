//
//  ViewController.swift
//  squire
//
//  Created by Julio Mojica on 8/13/18.
//  Copyright © 2018 Julio Mojica. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor(red: 57/255, green: 73/255, blue: 171/255, alpha: 1)
        setupTabBar()
    }
    
    func setupTabBar() {
        let workoutController = UINavigationController(rootViewController: MainWorkoutViewController())
        workoutController.tabBarItem.image = UIImage(named: "014-wieght-1")
        workoutController.tabBarItem.image = UIImage(named: "014-weight-1")
        
        let journeyController = UINavigationController(rootViewController: JourneyWorkoutViewController())
        journeyController.tabBarItem.image = UIImage(named: "001-dumbbell-3")
        journeyController.tabBarItem.image = UIImage(named: "001-dumbbell-3")
        
        viewControllers = [workoutController, journeyController]
        
        guard let items = tabBar.items else {return}
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: -4, right: 0)
        }
    }


}

