//
//  Webservices.swift
//  CellPayButton
//
//  Created by Cellcom on 7/30/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
public class WebService {
    public static var shared: WebService {
        return singleton
    }
    private static let singleton: WebService = WebService()
    
    //let BaseUrl:String = "https://web.cellpay.com.np/rest/"
    
    //let BaseUrl:String = "http://192.168.1.14:8080/paynet/rest/"
    
    static var isLive: Bool = false
    
    public static var baseUrl: String {
        return isLive ? "https://web.cellpay.com.np/rest/" : "https://test.cellpay.com.np/rest/"
    }
    public static var login: String {
        return isLive ? "" : "access/login"
    }
    public static var accounts: String {
        return isLive ? "" : "memberRecord/accounts"
    }
    public static var memberPayment: String {
        return isLive ? "" : "payments/memberPayment"
    }
    public static var confirmMemberPayment: String {
           return isLive ? "" : "payments/confirmMemberPayment"
       }
    
}
