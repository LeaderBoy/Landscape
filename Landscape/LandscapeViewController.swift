//
//  LandscapeViewController.swift
//  Landscape
//
//  Created by 杨志远 on 2019/12/13.
//  Copyright © 2019 BaQiWL. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {
    weak var newWindow : UIWindow?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        newWindow?.isHidden = true
    }

}
