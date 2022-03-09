//
//  InfoViewController.swift
//  Navagation
//
//  Created by Artem Blazhievsky on 11.02.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    let buttonAler = UIButton()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        buttonAler.frame = CGRect(x: view.frame.width/2-100, y: view.frame.height/2-25, width: 200, height: 50)
        buttonAler.layer.cornerRadius = 25
        buttonAler.backgroundColor = .systemYellow
        buttonAler.setTitle("Сlick on me", for: .normal)
        buttonAler.addTarget(self, action: #selector(openAlert), for: .touchUpInside)
        view.addSubview(buttonAler)
        
    }
  
    
    @objc func openAlert() {
        let alert = UIAlertController(title: "Choose", message: "Yes or No?", preferredStyle: .alert)
        
        let actionAlertYes = UIAlertAction(title: "Yes", style: .default) { _ in print("Yes")
        }
        let actionAlertNo = UIAlertAction(title: "No", style: .default) { _ in
            print("No")
        }
        
        alert.addAction(actionAlertYes)
        alert.addAction(actionAlertNo)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
}
