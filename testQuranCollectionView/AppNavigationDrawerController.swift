//
//  AppNavigationDrawerController.swift
//  testQuranCollectionView
//
//  Created by Safeen Azad on 9/24/17.
//  Copyright © 2017 SafeenAzad. All rights reserved.
//

import UIKit
import Material

class AppNavigationDrawerController: NavigationDrawerController {
    open override func prepare() {
        super.prepare()
        
        delegate = self as? NavigationDrawerControllerDelegate
    }
}
