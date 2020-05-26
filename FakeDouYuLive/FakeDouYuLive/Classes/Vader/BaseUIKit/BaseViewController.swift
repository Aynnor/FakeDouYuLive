//
//  BaseViewController.swift
//  FakeDouYuLive
//
//  Created by Aynnor on 2020/5/25.
//  Copyright © 2020 Aynnor. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        if (isViewLoaded && view.window == nil) {
            self.view = nil
        }
    }

    
}
