//
//  HomeViewController.swift
//  Landscape
//
//  Created by 杨志远 on 2019/12/13.
//  Copyright © 2019 BaQiWL. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var window : UIWindow = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let vc = LandscapeViewController()
        vc.newWindow = window
        window.rootViewController = vc
        return window
    }()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .groupTableViewBackground
        tableView.tableFooterView = UIView()
    }
}

extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "id")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "id")
        }
        cell?.textLabel?.text = "\(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}

extension HomeViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        window.makeKeyAndVisible()
    }
}
