//
//  CellPayMessageError.swift
//  CellPayButton
//
//  Created by Cellcom on 7/30/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
struct CellPayMessageError: Codable {
    let status, sessionExpired: Bool
    let errors: [CellPayError]

    enum CodingKeys: String, CodingKey {
        case status = "status"
        case sessionExpired = "sessionExpired"
        case errors = "errors"
       
    }
}

// MARK: - Error
struct CellPayError: Codable {
    let shortMessage, longMessage: String
    enum CodingKeys: String, CodingKey {
        case shortMessage = "shortMessage"
        case longMessage = "longMessage"
       
    }
}
