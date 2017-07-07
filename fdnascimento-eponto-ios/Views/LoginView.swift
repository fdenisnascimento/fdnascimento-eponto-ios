//
//  LoginView.swift
//  fdnascimento-eponto-ios
//
//  Created by Denis Nascimento on 07/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

protocol LoginView: class {
    
    func didLogin(error: Error?)
    func didLoginSuccess(error: Error?)
    
    func didResquestPassword(error: Error?)
    func didResquestPasswordSuccess()
}
