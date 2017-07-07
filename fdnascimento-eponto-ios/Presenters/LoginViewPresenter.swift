//
//  LoginViewPresenter.swift
//  fdnascimento-eponto-ios
//
//  Created by Denis Nascimento on 07/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

import UIKit

protocol LoginViewPresenter {

    init (view: LoginView?, user: User?)
   
    func login ()
    func requestPassword(email: String)
}
