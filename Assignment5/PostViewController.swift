//
//  PostViewController.swift
//  Assignment5
//
//  Created by Helin Akın on 27.04.2023.
//

import UIKit

class PostViewController: UIViewController {
  
  private let postImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.image = UIImage(named: "open_mac")
    return imageView
  }()
  
  private let usernameLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 17)
    label.text = "apple"
    return label
  }()
  
  
  private let bookmarkImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named: "bookmark")
    imageView.tintColor = .black
    return imageView
  }()
  
  private let dotsImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named:  "dots")
    imageView.tintColor = .black
    return imageView
  }()
  
  private let likedLabel: UILabel = {
    let label = UILabel()
    let username = "apple"
    label.font = UIFont.systemFont(ofSize: 17)
    label.numberOfLines = 0
    label.text = "Liked by \(username)"
    return label
  }()
  
  
  private let likeImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named: "heart")
    imageView.tintColor = .black
    return imageView
  }()
  
  private let commentImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named: "message")
    imageView.tintColor = .black
    return imageView
  }()
  
  private let shareImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.image = UIImage(named: "sent")
    imageView.tintColor = .black
    return imageView
  }()
  
  private let profileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.layer.cornerRadius = 15
    imageView.image = UIImage(named: "apple_logo")
    return imageView
  }()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    setupProfileImageView()
    setupUsernameLabel()
    setupPostImageView()
    setupImageViews()
    setupLikedLabel()
    setupBookmarkImageView()
    setupDotsImageView()
  }
  
  private func setupProfileImageView() {
    view.addSubview(profileImageView)
    
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
      profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
      profileImageView.widthAnchor.constraint(equalToConstant: 30),
      profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor)
    ])
  }
  
  private func setupUsernameLabel() {
    view.addSubview(usernameLabel)
    
    usernameLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      usernameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 15),
      usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor)
    ])
  }
  
  private func setupPostImageView() {
    view.addSubview(postImageView)
    
    postImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      postImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
      postImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
      postImageView.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 20),
      postImageView.heightAnchor.constraint(equalTo: postImageView.widthAnchor)
    ])
  }
  
  private func setupImageViews() {
    let stackView = UIStackView(arrangedSubviews: [likeImageView, commentImageView, shareImageView])
    stackView.axis = .horizontal
    stackView.distribution = .fillEqually
    stackView.spacing = 20
    
    view.addSubview(stackView)
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      stackView.leadingAnchor.constraint(equalTo: postImageView.leadingAnchor),
      stackView.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 10),
      stackView.widthAnchor.constraint(equalToConstant: 120),
      stackView.heightAnchor.constraint(equalToConstant: 40)
    ])
  }
  
  private func setupLikedLabel() {
    view.addSubview(likedLabel)
    
    likedLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      likedLabel.leadingAnchor.constraint(equalTo: postImageView.leadingAnchor),
      likedLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 50)
    ])
  }
  
  private func setupBookmarkImageView() {
    view.addSubview(bookmarkImageView)
    
    bookmarkImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      bookmarkImageView.trailingAnchor.constraint(equalTo: postImageView.trailingAnchor),
      bookmarkImageView.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 10),
      bookmarkImageView.widthAnchor.constraint(equalToConstant: 25),
      bookmarkImageView.heightAnchor.constraint(equalToConstant: 25)
    ])
  }
  
  private func setupDotsImageView() {
    view.addSubview(dotsImageView)
    
    dotsImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      dotsImageView.trailingAnchor.constraint(equalTo: postImageView.trailingAnchor),
      dotsImageView.bottomAnchor.constraint(equalTo: postImageView.topAnchor, constant: -10),
      dotsImageView.widthAnchor.constraint(equalToConstant: 25),
      dotsImageView.heightAnchor.constraint(equalToConstant: 25)
    ])
  }
  
}

