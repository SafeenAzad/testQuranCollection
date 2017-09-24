//
//  AppDelegate.swift
//  testQuranCollectionView
//
//  Created by Safeen Azad on 9/19/17.
//  Copyright © 2017 SafeenAzad. All rights reserved.
//

import UIKit
import Material

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    lazy var rootVC: RootVC = {
        return UIStoryboard.viewController(identifier: "RootVC") as! RootVC
    }()
    
    lazy var leftNavigationDrawerController: LeftNavigationDrawerController = {
        return UIStoryboard.viewController(identifier: "LeftNavigationDrawerController") as! LeftNavigationDrawerController
    }()

    
    
   

    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow(frame: Screen.bounds)
        window!.rootViewController = AppNavigationDrawerController(
            rootViewController: rootVC,
            leftViewController: leftNavigationDrawerController,
            rightViewController: nil)
        
        window!.makeKeyAndVisible()
    }



}
extension UIStoryboard {
    class func viewController(identifier: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
}
