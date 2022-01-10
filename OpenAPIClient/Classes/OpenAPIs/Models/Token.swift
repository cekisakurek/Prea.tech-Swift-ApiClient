//
// Token.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Token: Codable, Hashable {

    public var token: String?
    public var name: String?
    public var email: String?

    public init(token: String? = nil, name: String? = nil, email: String? = nil) {
        self.token = token
        self.name = name
        self.email = email
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case token
        case name
        case email
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(email, forKey: .email)
    }
}

