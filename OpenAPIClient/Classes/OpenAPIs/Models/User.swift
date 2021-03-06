//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct User: Codable, Hashable {

    public var name: String?
    public var email: String?
    public var password: String?

    public init(name: String? = nil, email: String? = nil, password: String? = nil) {
        self.name = name
        self.email = email
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case email
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

