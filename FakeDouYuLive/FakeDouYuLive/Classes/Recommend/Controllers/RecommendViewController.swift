//
//  RecommendViewController.swift
//  FakeDouYuLive
//
//  Created by Aynnor on 2020/5/25.
//  Copyright © 2020 Aynnor. All rights reserved.
//

import UIKit

class RecommendViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            return .default
        }
    }
    
    
}
