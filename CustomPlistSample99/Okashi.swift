//
//  Okashi.swift
//  CustomPlistSample99
//
//  Created by npc on 2023/12/06.
//

import Foundation

// MARK: - Okashi
struct Okashi: Codable {
    let item: [Item]?
    let status, count: String
}

// MARK: - Item
struct Item: Codable, Hashable {
    let id, name, maker: String
    let price, type, regist: String
    let url: String
    let area: String?
    let image: String
    let comment: String

    static func == (lhs: Item, rhs: Item) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
