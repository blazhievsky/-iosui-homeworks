//
//  ProfileViewController.swift
//  Navagation
//
//  Created by Artem Blazhievsky on 11.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configur()
      
    }
}

//MARK: - Private methods
private extension ProfileViewController {
    func configur() {
        self.title = "Profile"
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(profileHeaderView)
        profileHeaderView.configureView()
        profileHeaderView.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
            
            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            profileHeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 200)
        
            
        ])
    }
}
//avatarImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
//avatarImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
//avatarImage.widthAnchor.constraint(equalToConstant: 100),
//avatarImage.heightAnchor.constraint(equalTo: avatarImage.widthAnchor),
