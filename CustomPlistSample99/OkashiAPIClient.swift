//
//  OkashiAPIClient.swift
//  CustomPlistSample99
//
//  Created by npc on 2023/12/06.
//

import Foundation

struct OkashiAPIClient: APIClient {
    let urlString: String
    // FIXME: 直して！

    private func makeURLComponents() throws -> URLComponents {
        switch urlResult {
        case .success(let url):
            guard var components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
                throw CommunicationError.cannnotCreateURLComponents
            }

            guard let apiKey = Common.shared.getValue(key: "apikey"),
                  let format = Common.shared.getValue(key: "format") else {
                throw CommunicationError.cannnotCreateURLComponents
            }
            // FIXME: 直して！
            // queryItemsはURLQueryItemの配列だよ！

            for parameter in parameters {
                // FIXME: 直して！
            }
            return components

        case .failure(let error):
            throw error
        }
    }
    func fetch() async -> Result<Okashi, Error> {
        do {
            guard let url = try makeURLComponents().url else {
                return .failure(CommunicationError.cannotCreateURL)
            }
            // FIXME: 直して！
            guard let response = response as? HTTPURLResponse else {
                return .failure(CommunicationError.responseNotReturned)
            }
            guard 200..<400 ~= response.statusCode else {
                return .failure(CommunicationError.badStatusCode(response.statusCode))
            }
            let decodeData = try JSONDecoder().decode(Okashi.self, from: data)
            return .success(decodeData)
        } catch {
            return .failure(error)
        }
    }
}
