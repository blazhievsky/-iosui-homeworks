//
//  AppDelegate.swift
//  Navagation
//
//  Created by Artem Blazhievsky on 11.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var orientationLock = UIInterfaceOrientationMask.portrait
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        // Create UITabBarController
        let tabBarController = UITabBarController()
        
        // Add ViewController
        let profileVC = ProfileViewController()
        let feedVC = FeedViewController()
        
        // Create Navigation ViewController
        let profileNavigationVC = UINavigationController(rootViewController: profileVC)
        let feedNavigationVC = UINavigationController(rootViewController: feedVC)
        
        // Icons and text TabBarItems for NavigationVC
        profileNavigationVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), tag: 0)
        feedNavigationVC.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "note.text"), tag: 0)
        
        // Add NavigationController to TabBarController
        tabBarController.viewControllers = [feedNavigationVC, profileNavigationVC]
        tabBarController.tabBar.isHidden = false
        
        //Indicates where to start
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        // Set color NavigationBar
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        profileNavigationVC.navigationBar.barTintColor = UIColor.white
        profileNavigationVC.navigationBar.standardAppearance = appearance;
        profileNavigationVC.navigationBar.scrollEdgeAppearance = profileNavigationVC.navigationBar.standardAppearance
        
        tabBarController.tabBar.backgroundColor = UIColor.white
        
        return true
    }
    
    
    
}

