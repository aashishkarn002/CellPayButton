//
//  UserInfo.swift
//  CellPayButton
//
//  Created by Cellcom on 7/30/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
public class UserInfo: NSObject {
     var sessionID     :String?
    class var sharedInstance: UserInfo {
           struct Static {
               static let instance: UserInfo = UserInfo()
           }
           return Static.instance
       }
    func setUserInfo(userInfo:LoginResponse) -> Void {
        if let sessionID  = userInfo.sessionID as? String {
              self.sessionID = sessionID
          }
    }
}
