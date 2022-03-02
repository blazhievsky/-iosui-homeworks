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
        
        view.backgroundColor = .systemBackground
        self.view.addSubview(profileHeaderView)
        
        profileHeaderView.configureView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.view.subviews.first?.frame = self.view.frame
        
        
    }
}
