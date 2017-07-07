//
//  LoginPresenter.swift
//  fdnascimento-eponto-ios
//
//  Created by Denis Nascimento on 07/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

struct LoginPresenter: LoginViewPresenter {
    
    weak var view: LoginView?
    var user: User?
    
    init(view: LoginView?, user: User?) {
        self.view = view
        self.user = user
    }
    
    func login() {
        view?.didLogin(error: nil)
    }
    
    func requestPassword(email: String) {
        view?.didResquestPassword(error: nil)
    }
}
