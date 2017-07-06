//
//  LoginViewController.swift
//  E-ponto
//
//  Created by Denis Nascimento on 31/05/17.
//  Copyright (c) 2017 Denis Nascimento. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    

    
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var requestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    
        
    }
    
    
    func requestPasswordFailure() -> Void {
        AlertView.showMessage(targetVC: self, title: nil, message: "Não foi possível logar com os dados informados!")
    }
    
    func requestPasswordSuccess() -> Void {
        AlertView.showMessage(targetVC: self, title: nil, message: "Enviamos sua nova senha para seu email.")
    }
    
    func loginFailure() -> Void {
        AlertView.showMessage(targetVC: self, title: nil, message: "Não foi possível logar com os dados informados!")
    }
    
    func loginSuccess() -> Void {
        AlertView.showMessage(targetVC: self, title: nil, message: "Login efetuado com sucesso")
    }
    
    func goMainView() -> Void {
        
        let navController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "navController") as! UINavigationController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navController
        
        
    }
    
    // MARK: - setup
    
    func setupLayout() {
        
        usernameTextField.addBottomBorderWithColor(color: UIColor.gray, width: 1.0)
        passwordTextField.addBottomBorderWithColor(color: UIColor.gray, width: 1.0)
        usernameTextField.text = "denis@thssolution.com"
        passwordTextField.text = "123456"
    }
    
    
    
}
