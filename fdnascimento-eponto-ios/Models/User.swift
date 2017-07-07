
struct User {
    var username: String?
    var password: String?
}


//import UIKit
//import Firebase
//import FirebaseAuth
//
//class User: NSObject {
//    
//    //MARK: Public methods
//    class  func signup(email: String, password: String, completion: @escaping (_ created: Bool   )->())  {
//        
//        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//            if error == nil {
//                completion(true)
//            }
//            else{
//                completion(false)
//            }
//        }
//        
//    }
//    
//    
//    class func signin(email: String, password: String, completion: @escaping (_ created: Bool, _ email: String? ) -> ()) {
//        
//        Auth.auth().signIn(withEmail: email, password: password) { user, error in
//            
//            if error == nil {
//                completion(true, user?.email)
//            }
//            else{
//                completion(false,nil)
//            }
//            
//        }
//    }
//    
//    
//    class func isAuthenticated() -> Bool {
//        return (Auth.auth().currentUser != nil)
//    }
//
//}


