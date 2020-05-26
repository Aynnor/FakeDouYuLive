//
//  AppDelegate.swift
//  FakeDouYuLive
//
//  Created by Aynnor on 2020/5/25.
//  Copyright © 2020 Aynnor. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
    
    
    
    
}

