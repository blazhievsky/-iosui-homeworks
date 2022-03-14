//
//  FeedViewController.swift
//  Navagation
//
//  Created by Artem Blazhievsky on 11.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post = Post(title: "My first post")
    var postButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        self.title = "Feed"
        configure()
    }
}

//MARK: - Private Methods

private extension FeedViewController {
    func configure() {
        lazy var buttonRedToPost: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 25
            button.backgroundColor = .systemRed
            button.setTitle("Post", for: .normal)
            button.addTarget(self, action: #selector(openPost), for: .touchUpInside)
            return button
        }()
        
        lazy var buttonGreenToPost: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 25
            button.backgroundColor = .systemGreen
            button.setTitle("Post", for: .normal)
            button.addTarget(self, action: #selector(openPost), for: .touchUpInside)
            return button
        }()
        
        lazy var stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.addArrangedSubview(buttonRedToPost)
            stackView.addArrangedSubview(buttonGreenToPost)
            return stackView
        }()
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 300),
            stackView.heightAnchor.constraint(equalToConstant: 200),
            
            buttonRedToPost.widthAnchor.constraint(equalToConstant: 150),
            buttonRedToPost.heightAnchor.constraint(equalToConstant: 100),
            
            buttonGreenToPost.widthAnchor.constraint(equalTo: buttonRedToPost.widthAnchor),
            buttonGreenToPost.heightAnchor.constraint(equalTo: buttonRedToPost.heightAnchor)
            
        ])
    }
    //MARK: - @objc methods
    @objc func openPost() {
        let postVC = PostViewController()
        navigationController?.pushViewController(postVC, animated: true)
        postVC.postTitle = post
    }
}




