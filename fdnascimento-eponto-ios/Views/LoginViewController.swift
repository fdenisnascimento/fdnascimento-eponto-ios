//
//  LoginViewController.swift
//  fdnascimento-eponto-ios
//
//  Created by Denis Nascimento on 07/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    @IBOutlet weak var btnRequestPassword: UIButton!
    @IBOutlet weak var btnLogin: UIButton!

    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}

extension LoginViewController: CodeBased {
    
    func setupLayout() {
        
        view.backgroundColor = .white
        textEmail.addBottomBorderWithColor(color: UIColor.lightGray, width: 1.0)
        textPassword.addBottomBorderWithColor(color: UIColor.lightGray, width: 1.0)
        btnLogin.addTarget(self, action:#selector(loginButtonPressed) , for: .touchUpInside)
    }
}

extension LoginViewController {
    
    func loginButtonPressed () {
        presenter?.login()
    }
    
    func requestPasswordButtonPressed () {
        presenter?.requestPassword(email: (self.textEmail.text)!)
    }
}

extension LoginViewController: LoginView {
    
    func didLogin(error: Error?) {
        AlertView.showMessage(targetVC: self, title: "OI", message: "Ponto")
    }
    
    func didResquestPasswordSuccess() {
        
    }
    
    func didLoginSuccess(error: Error?) {
        
    }
    
    func didResquestPassword(error: Error?) {
        
    }
}
