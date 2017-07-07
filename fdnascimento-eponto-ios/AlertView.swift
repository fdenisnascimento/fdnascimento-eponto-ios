//
//  AlertView.swift
//  fdnascimento-eponto-ios
//
//  Created by Denis Nascimento on 07/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

import UIKit

class AlertView: NSObject {
    
    static  func showMessage(targetVC: UIViewController, title: String!, message: String!){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction((UIAlertAction(title: "OK", style: .default, handler: {(action) -> Void in
        })))
        
        targetVC.present(alert, animated: true, completion: nil)
    }


}
