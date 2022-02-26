//
//  ProfileViewController.swift
//  Navagation
//
//  Created by Artem Blazhievsky on 11.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileHeaderView = ProfileHeaderView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Profile"
        view.backgroundColor = .lightGray
        
        view.addSubview(profileHeaderView)
        viewWillLayoutSubviews()
    }
   
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = CGRect(x: view.frame.maxX, y: view.frame.maxY, width: view.frame.width, height: view.frame.height)
    }
}
