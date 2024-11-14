//
//  ViewController.swift
//  Lesson2_1_dop
//
//  Created by Ilnar on 13.11.2024.
//

import UIKit

class ViewController: UIViewController {
    let subscriptionLabel = UILabel()
    let subscribersLabel = UILabel()
    let postsLabel = UILabel()
    let subscriptionNumberLabel = UILabel()
    let subscribersNumberLabel = UILabel()
    let postsNumberLabel = UILabel()
    let headLabel = UILabel()
    let textLabel = UILabel()
    
    let addpostButton = UIButton()
    let quitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        subscription()
        countSub()
        addPost()
        head()
        text()
        quit()
    }
    
    func subscription() {
        subscriptionLabel.text = "Подписок"
        subscribersLabel.text = "Подписчиков"
        postsLabel.text = "Постов"
        let startX: CGFloat = 30
        let spacing: CGFloat = 20
        let maxX = view.frame.width
        let startY: CGFloat = 100
        let widthN = maxX - (startX * 2)
        let divWidth: CGFloat = (widthN) / 3 + startX
        let width: CGFloat = divWidth - spacing / 2 - startX
        
        let xOne: CGFloat = startX
        let xTwo: CGFloat = divWidth + spacing / 2
        let xThree: CGFloat = divWidth + width + spacing / 2
        
        subscriptionLabel.frame = CGRect(x: xOne, y: startY, width: width, height: 50)
        subscriptionLabel.textAlignment = .center
        subscriptionLabel.font = .systemFont(ofSize: 14, weight: .bold)
        subscribersLabel.frame = CGRect(x: xTwo, y: startY, width: width, height:  50)
        subscribersLabel.textAlignment = .center
        subscribersLabel.font = .systemFont(ofSize: 14, weight: .bold)
        postsLabel.frame = CGRect(x: xThree, y: startY, width: width, height:  50)
        postsLabel.textAlignment = .center
        postsLabel.font = .systemFont(ofSize: 14, weight: .bold)
        
        view.addSubview(subscriptionLabel)
        view.addSubview(subscribersLabel)
        view.addSubview(postsLabel)
    }
    
    func countSub() {
        subscriptionNumberLabel.text = "99"
        subscribersNumberLabel.text = "120"
        postsNumberLabel.text = "300"
        let startX: CGFloat = 30
        let spacing: CGFloat = 20
        let maxX = view.frame.width
        let startY: CGFloat = 130
        let widthN = maxX - (startX * 2)
        let divWidth: CGFloat = (widthN) / 3 + startX
        let width: CGFloat = divWidth - spacing / 2 - startX
        
        let xOne: CGFloat = startX
        let xTwo: CGFloat = divWidth + spacing / 2
        let xThree: CGFloat = divWidth + width + spacing / 2
        
        subscriptionNumberLabel.frame = CGRect(x: xOne, y: startY, width: width, height: 50)
        subscriptionNumberLabel.textAlignment = .center
        subscriptionNumberLabel.font = .systemFont(ofSize: 18, weight: .medium)
        subscribersNumberLabel.frame = CGRect(x: xTwo, y: startY, width: width, height:  50)
        subscribersNumberLabel.textAlignment = .center
        subscribersNumberLabel.font = .systemFont(ofSize: 18, weight: .medium)
        postsNumberLabel.frame = CGRect(x: xThree, y: startY, width: width, height:  50)
        postsNumberLabel.textAlignment = .center
        postsNumberLabel.font = .systemFont(ofSize: 18, weight: .medium)
        
        view.addSubview(subscriptionNumberLabel)
        view.addSubview(subscribersNumberLabel)
        view.addSubview(postsNumberLabel)
    }
    func addPost() {
        addpostButton.setTitle("Добавить пост", for: .normal)
        addpostButton.titleLabel?.font = .systemFont(ofSize: 14 , weight: .bold)
        addpostButton.setTitleColor(.white, for: .normal)
        addpostButton.backgroundColor = .black
        addpostButton.frame = CGRect(x: 30, y: 200, width: view.frame.width - 60, height: 40)
        addpostButton.layer.cornerRadius = 20
        view.addSubview(addpostButton)
    }
    
    func head() {
        headLabel.text = "О себе"
        headLabel.font = .systemFont(ofSize: 14, weight: .bold)
        headLabel.frame = CGRect(x: 30, y: 270, width: 60, height: 40)
        view.addSubview(headLabel)
    }
    
    func text() {
        textLabel.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
        textLabel.font = .systemFont(ofSize: 14, weight: .regular)
        textLabel.frame = CGRect(x: 30, y: 300, width: view.frame.width - 60, height: 76)
        textLabel.numberOfLines = 4
        view.addSubview(textLabel)
    }
    
    func quit() {
        let hight = view.frame.height
        quitButton.setTitle("Выйти", for: .normal)
        quitButton.setTitleColor(.systemBlue, for: .normal)
        quitButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        quitButton.frame = CGRect(x: 30, y: hight - 100, width: view.frame.width - 60, height: 40)
        view.addSubview(quitButton)
    }
}
