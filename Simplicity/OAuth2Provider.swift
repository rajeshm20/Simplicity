//
//  OAuth2LoginProvider.swift
//  Simplicity
//
//  Created by Edward Jiang on 5/10/16.
//  Copyright © 2016 Stormpath. All rights reserved.
//

import Foundation

public protocol OAuth2Provider: LoginProvider {
    var clientId: String { get }
    var scopes: Set<String> { get set }
    var grantType: OAuth2GrantType { get }
}

public enum OAuth2GrantType: String {
    case AuthorizationCode = "code",
    Implicit = "token",
    Custom = ""
}