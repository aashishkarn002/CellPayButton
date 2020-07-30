//
//  LoginResponse.swift
//  CellPayButton
//
//  Created by Cellcom on 7/30/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
struct LoginResponse: Codable {
    public let status, sessionExpired: Bool
    public let payload: Payload
    public let sessionID: String

    enum CodingKeys: String, CodingKey {
        case status, sessionExpired, payload
        case sessionID = "sessionId"
    }
}

// MARK: - Payload
struct Payload: Codable {
    let initialData: InitialData

    enum CodingKeys: String, CodingKey {
        case initialData = "InitialData"
    }
}

// MARK: - InitialData
struct InitialData: Codable {
    let profile: Profile
    let requireTransactionPassword: Bool
    let accounts: [Account]
    let canMakeMemberPayments, canMakeSystemPayments: Bool
    let decimalCount: Int
    let decimalSeparator: String
    let groupDetails: GroupDetails
    let credentialsExpired, initialDataOperator: Bool

    enum CodingKeys: String, CodingKey {
        case profile, requireTransactionPassword, accounts, canMakeMemberPayments, canMakeSystemPayments, decimalCount, decimalSeparator, groupDetails, credentialsExpired
        case initialDataOperator = "operator"
    }
}

// MARK: - Account
struct Account: Codable {
    let id: Int
    let isDefault: Bool
    let type: TypeClass
}

// MARK: - TypeClass
struct TypeClass: Codable {
    let id: Int
    let name: String
    let currency: AccountCurrency
}

// MARK: - Currency
struct AccountCurrency: Codable {
    let id: Int
    let symbol, name: String
}

// MARK: - GroupDetails
struct GroupDetails: Codable {
    let nature: String
    let groupID: Int
    let groupName, groupDetailsDescription: String
    let languages: [String]

    enum CodingKeys: String, CodingKey {
        case nature
        case groupID = "groupId"
        case groupName
        case groupDetailsDescription = "description"
        case languages
    }
}

// MARK: - Profile
struct Profile: Codable {
    let id: Int
    let name, username, mobileNo: String
    let customValues: [CustomValue]
}

// MARK: - CustomValue
struct CustomValue: Codable {
    let internalName: String
    let fieldID: Int
    let displayName, value: String

    enum CodingKeys: String, CodingKey {
        case internalName
        case fieldID = "fieldId"
        case displayName, value
    }
}

