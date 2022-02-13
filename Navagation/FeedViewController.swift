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
    
    @objc func openPost() {
        let postVC = PostViewController()
        navigationController?.pushViewController(postVC, animated: true)
        postVC.postTitle = post
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        self.title = "Feed"
        
        postButton = UIButton(frame: CGRect(x: view.frame.width/2-100, y: view.frame.height/2-25, width: 200, height: 50))
        postButton.layer.cornerRadius = 25
        postButton.backgroundColor = .red
        postButton.setTitle("Post", for: .normal)
        postButton.addTarget(self, action: #selector(openPost), for: .touchUpInside)
        view.addSubview(postButton)
    
        
    }
    
    
    
}
