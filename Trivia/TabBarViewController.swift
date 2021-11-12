//
//  TabBarViewController.swift
//  Trivia
//
//  Created by David Viloria Ortega on 1/11/21.
//

import UIKit
import Alamofire


class TabBarViewController: UITabBarController {

    override func viewDidLoad(){
        super.viewDidLoad()
        
        let firstTabTittle = "categories"
        let firstTabImage = UIImage(systemName: "list.dash")
        
        let firstTabViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        firstTabViewController.title = firstTabTittle
        
        let  firstTabNavigationController  = UINavigationController(rootViewController: firstTabViewController)
        
        firstTabNavigationController.tabBarItem = UITabBarItem(title: firstTabTittle, image: firstTabImage, selectedImage: nil)
        
        let secondViewController = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
        
        let  secondTabNavigationController  = UINavigationController(rootViewController: secondViewController)
        secondTabNavigationController.tabBarItem = UITabBarItem(title: "Random", image: UIImage(systemName: "shuffle") , selectedImage: nil)
        
        viewControllers = [firstTabNavigationController, secondTabNavigationController]

    }
}
