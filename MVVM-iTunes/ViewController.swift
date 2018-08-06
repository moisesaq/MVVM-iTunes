//
//  ViewController.swift
//  MVVM-iTunes
//
//  Created by Moises Apaza on 21/07/2018.
//  Copyright © 2018 Moises Apaza. All rights reserved.
//

import UIKit
import IHKeyboardAvoiding
import SnapKit

class ViewController: BaseController {

    let keyboardDismissView: KeyboardDismissingView = {
        return KeyboardDismissingView()
    }()
    
    lazy var emailTextField: UITextField = {
        return UITextField().toCustomTextField(holder: "Email")
    }()
    
    lazy var passwordTextField: UITextField = {
        return UITextField().toCustomTextField(holder: "Password")
    }()
    
    lazy var loginButton: UIButton = {
        return UIButton().toCustomButton(title: "Log In", color: .accent).addAction(target: self, action: #selector(startLogin))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
    }

    @objc func startLogin() {
        print("Start login......")
    }
    
    private func addViews() {
        view.addSubview(keyboardDismissView)
        keyboardDismissView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        keyboardDismissView.addSubview(emailTextField)
        keyboardDismissView.addSubview(passwordTextField)
        keyboardDismissView.addSubview(loginButton)
        
        emailTextField.snp.makeConstraints { (make) in
            make.center.equalTo(keyboardDismissView)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(emailTextField.snp.bottom).offset(5)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextField.snp.bottom).offset(5)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
            make.height.equalTo(40)
        }
    }
}














