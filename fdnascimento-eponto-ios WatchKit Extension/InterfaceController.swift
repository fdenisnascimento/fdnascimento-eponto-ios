//
//  InterfaceController.swift
//  fdnascimento-eponto-ios WatchKit Extension
//
//  Created by Denis Nascimento on 06/07/17.
//  Copyright © 2017 Denis Nascimento. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    /** Called when the session has completed activation. If session state is WCSessionActivationStateNotActivated there will be an error with more details. */
    @available(watchOS 2.2, *)
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    @IBOutlet var labelStatus: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        setupConnetcion()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func setupConnetcion() -> Void {
        
        let session = WCSession.default()
        
        
        let action = ["action":"isAuthenticated"]
        
        
        session.sendMessage(action, replyHandler: { (replyMessage) -> Void in
            print("ok")
            
        }) { (error) -> Void in
       
            print("error: \(error.localizedDescription)")
        }

    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any],
                 replyHandler: @escaping ([String : Any]) -> Void){
        
        print("watch")
        DispatchQueue.main.async(execute: { () -> Void in
            self.labelStatus.setText(message["success"] as? String)
        })
        
    }

}
