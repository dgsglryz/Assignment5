//
//  LoginViewController.swift
//  Assignment5
//
//  Created by Helin Akın on 27.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
  
  private let profileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "picture")
    imageView.layer.cornerRadius = UIScreen.main.bounds.width * 0.25
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    return imageView
  }()
  
  private let usernameTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Username"
    textField.borderStyle = .roundedRect
    return textField
  }()
  
  private let passwordTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Password"
    textField.borderStyle = .roundedRect
    textField.isSecureTextEntry = true
    return textField
  }()
  
  private let forgotPasswordButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Forgot Password", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
    return button
  }()
  
  private let loginButton: UIButton = {
      let button = UIButton(type: .system)
      button.setTitle("Login", for: .normal)
      button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
      button.backgroundColor = UIColor.systemBlue
      button.setTitleColor(.white, for: .normal)
      button.layer.cornerRadius = 25
      button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
      return button
  }()
  
  private let loginWithFacebookButton: UIButton = {
      let button = UIButton(type: .system)
      button.setTitle("Login with Facebook", for: .normal)
      button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
      button.setTitleColor(.systemBlue, for: .normal)
      button.layer.borderWidth = 1
      button.layer.borderColor = UIColor.systemBlue.cgColor
      button.layer.cornerRadius = 25
      return button
  }()
  
  private let createAccountButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Create Account", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupViews()
  }
  
  private func setupViews() {
    view.addSubview(profileImageView)
    view.addSubview(usernameTextField)
    view.addSubview(passwordTextField)
    view.addSubview(loginButton)
    view.addSubview(loginWithFacebookButton)
    view.addSubview(forgotPasswordButton)
    view.addSubview(createAccountButton)
    
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
      profileImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
      profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor)
    ])
    
    usernameTextField.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      usernameTextField.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 40),
      usernameTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
      usernameTextField.heightAnchor.constraint(equalToConstant: 50)
    ])
    
    passwordTextField.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
      passwordTextField.widthAnchor.constraint(equalTo: usernameTextField.widthAnchor),
      passwordTextField.heightAnchor.constraint(equalTo: usernameTextField.heightAnchor)
    ])
    
    forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20)
    ])
    
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 20),
      loginButton.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor),
      loginButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor)
    ])
    
    loginWithFacebookButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      loginWithFacebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      loginWithFacebookButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
      loginWithFacebookButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor),
      loginWithFacebookButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor)
    ])
    
    createAccountButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      createAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
    ])
  }
  
  @objc private func loginButtonTapped() {
    let postViewController = PostViewController()
    navigationController?.pushViewController(postViewController, animated: true)
  }
}


