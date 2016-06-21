
//
//  FcaebookLogin.swift
//  PicSharing
//
//  Created by Abd-ur-rehman Atif on 22/06/2016.
//  Copyright © 2016 Abd-ur-rehman Atif. All rights reserved.
//

import Foundation
import FBSDKLoginKit
import FBSDKCoreKit

func facebookLoginFunction() -> Void {
    
    
    let FacebookLoginManager = FBSDKLoginManager()
    
    
    FacebookLoginManager.logInWithReadPermissions(["email"]) { (result:FBSDKLoginManagerLoginResult!, Error:NSError!) -> Void in
        
        
        
        if Error != nil {
            
            print("Facebook Login Error\(Error)")
        }
        else {
            
            let AccessToken = FBSDKAccessToken.currentAccessToken().tokenString
            
            print("SucessfullyDone\(AccessToken)")
            
        }
        
        
    }
    
    
    
    
    
}