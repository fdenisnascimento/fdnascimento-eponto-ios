//
//  WatchSessionManager.swift
//  fdnascimento-eponto-ios
//
//  Created by Denis Nascimento on 06/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

import UIKit
import WatchConnectivity

class WatchSessionManager {
    
    let session = WCSession.default()


   class func sendMessage(_ action: [String : Any], completion: @escaping ( _ replyMessage:  [String : Any]?, _ error: Error?) -> ()) {
        
        WatchSessionManager().session.sendMessage(action, replyHandler: { (replyMessage) -> Void in
                completion(replyMessage, nil)
            
        }) { (error) -> Void in
            print("error: \(error.localizedDescription)")
            completion(nil,error)
        }
        
    }
    
}
