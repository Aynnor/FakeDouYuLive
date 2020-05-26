//
//  BaseNavigationViewController.swift
//  FakeDouYuLive
//
//  Created by Aynnor on 2020/5/25.
//  Copyright © 2020 Aynnor. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
        
    
    
    //把隐藏状态栏的权限交给栈顶控制器
    override var childForStatusBarHidden: UIViewController? {
        return topViewController
    }
    
    //把隐藏导航栏的权限交给栈顶控制器
    override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
    
    
    
}
