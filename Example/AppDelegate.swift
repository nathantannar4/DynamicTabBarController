//
//  AppDelegate.swift
//  Example
//
//  Created by Nathan Tannar on 11/14/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit
import DynamicTabBarController

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let isTranslucent = false
        
        var vcs: [UIViewController] = [UINavigationController(rootViewController: TableViewController())]
        for fruit in Fruit.all() {
            let vc = ViewController()
            vc.tabBarItem.image = fruit.image()?.withRenderingMode(.alwaysTemplate)
            vc.title = fruit.rawValue.capitalized
            vc.view.backgroundColor = fruit.color()
            let nav = UINavigationController(rootViewController: vc)
            nav.navigationBar.isTranslucent = isTranslucent
            nav.navigationBar.prefersLargeTitles = true
            vcs.append(nav)
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = DynamicTabBarController(viewControllers: vcs)
        tabBarController.isTabBarTranslucent = isTranslucent
//        tabBarController.updateTabBarHeight(to: 20, animated: false)
//        tabBarController.tabBarSizeLayout = .fixed(100)
//        tabBarController.isScrollEnabled = false
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
    
}

