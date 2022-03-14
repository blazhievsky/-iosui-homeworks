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
        
        self.title = "User Profile"
        view.backgroundColor = .systemBackground
        profileHeaderView.configureView()
        configur()
        addButton()
    }
}

//MARK: - Private methods
private extension ProfileViewController {
    func configur() {
        
        view.addSubview(profileHeaderView)
        
        profileHeaderView.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
}

private extension ProfileViewController {
    func addButton() {
        
        let button: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = .systemBlue
            button.layer.cornerRadius = 4
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 4, height: 4)
            button.layer.shadowOpacity = 0.7
            button.layer.shadowRadius = 4
            button.setTitleColor(.lightGray, for: .highlighted)
            button.setTitle("КНОПКА", for: .normal)
            return button
        }()
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
