//
//  AppDelegate.swift
//  BTVNBuoi5UI
//
//  Created by Trần Văn Cam on 06/10/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let viewController = ViewController()
        window?.backgroundColor = .white
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }


}

