//
//  MainViewController.swift
//  FakeDouYuLive
//
//  Created by Aynnor on 2020/5/25.
//  Copyright © 2020 Aynnor. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
        setupUI()
    }
    
    func setupUI() -> Void {
        
        addChildViewControllers(vc: RecommendViewController(), title: "推荐", norImage: "tabSpecialLive_32x32_", selImage: "tabSpecialLiveHL_32x32_")
        addChildViewControllers(vc: RecreationViewController(), title: "娱乐", norImage: "tabSpecialYule_32x32_", selImage: "tabSpecialYuleHL_32x32_")
        addChildViewControllers(vc: FollowViewController(), title: "关注", norImage: "tabSpecialFocus_32x32_", selImage: "tabSpecialFocusHL_32x32_")
        addChildViewControllers(vc: YuBaViewController(), title: "鱼吧", norImage: "tabSpecialYuba_32x32_", selImage: "tabSpecialYubaHL_32x32_")
        addChildViewControllers(vc: DiscoverViewController(), title: "发现", norImage: "tabSpecialDiscovery_32x32_", selImage: "tabSpecialDiscoveryHL_32x32_")
        
    }
    
    func addChildViewControllers(vc:UIViewController, title:String, norImage:String, selImage:String) -> Void {
        
        vc.title = title
        vc.tabBarItem.image = UIImage(named: norImage)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: selImage)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 11),NSAttributedString.Key.foregroundColor:UIColor.gray], for: .normal)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13),NSAttributedString.Key.foregroundColor:UIColor.orange], for: .selected)
        
        
        //把vc包到nav中
        let nav = BaseNavigationViewController(rootViewController: vc)
        addChild(nav)
    }
    
    
    func setupTabBar() -> Void {
        //设置全局的TabBar颜色配置
//        UITabBar.appearance().tintColor = .orange
        
        
    }



}
