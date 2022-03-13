//
//  ProfileHeaderView.swift
//  Navagation
//
//  Created by Artem Blazhievsky on 21.02.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String = ""
    
    lazy private var avatarImage: UIImageView  = {
        let avatar = UIImageView()
        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.clipsToBounds = true
        avatar.image = UIImage(named: "imageAvatar")
        avatar.layer.cornerRadius = 50
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        return avatar
    }()
    
    lazy private var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.text = "Блажиевский Артем"
        return label
    }()
    
    lazy private var statusLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.text = "Waiting for something..."
        return label
    }()
    
    lazy private var statusTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 12
        textField.placeholder = "Поле для ввода текста статуса..."
        textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return textField
    }()
    
    lazy private var statusSetButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.setTitleColor(.lightGray, for: .highlighted)
        button.setTitle("Установить статус", for: .normal)
        button.addTarget(self, action:  #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
}

// MARK: - Methods
extension ProfileHeaderView {
    func configureView() {
        self.backgroundColor = .lightGray
        self.addSubview(avatarImage)
        self.addSubview(nameLabel)
        self.addSubview(statusSetButton)
        self.addSubview(statusLabel)
        self.addSubview(statusTextField)
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            avatarImage.widthAnchor.constraint(equalToConstant: 100),
            avatarImage.heightAnchor.constraint(equalTo: avatarImage.widthAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            
            statusLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -10),
            
            statusTextField.bottomAnchor.constraint(equalTo: statusSetButton.topAnchor, constant: -17),
            statusTextField.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            
            statusSetButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 20),
            statusSetButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            statusSetButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            statusSetButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc
    private func statusTextChanged() {
        statusText = statusTextField.text ?? ""
        
        //Проверка значения переменной для проверки выполнения пункта 4 в доп. задании
        print("statusText: \(statusText)")
    }
    
    @objc
    private func buttonPressed() {
        statusLabel.text = statusTextField.text
      }
}

