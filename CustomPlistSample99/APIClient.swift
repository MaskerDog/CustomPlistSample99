//
//  APIClient.swift
//  CustomPlistSample99
//
//  Created by npc on 2023/12/06.
//

import Foundation

/// 通信をするための規格
protocol APIClient<DataElements> {
    associatedtype DataElements: Decodable

    var urlString: String { get }

    func fetch() async -> Result<DataElements, any Error>
}
extension APIClient {
    // 通信に必要な材料
    var urlResult: Result<URL, any Error> {
        if let tmpURL = URL(string: urlString) {
            return .success(tmpURL)
        } else {
            return .failure(CommunicationError.badURL)
        }
    }
}
