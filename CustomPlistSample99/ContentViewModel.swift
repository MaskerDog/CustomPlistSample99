//
//  ContentViewModel.swift
//  CustomPlistSample99
//
//  Created by npc on 2023/12/06.
//

import Foundation

final class ContentViewModel: ObservableObject {
    // FIXME: 直して！
    @Published var searchWord: String = "" {
        didSet {
            okashiAPIClient.parameters["keyword"] = searchWord
        }
    }
    let shared = Common.shared
    var okashiAPIClient: OkashiAPIClient
    init() {
        // 取得できなかったらURL作成ができずfatalError
        okashiAPIClient = OkashiAPIClient(urlString: shared.getValue(key: "url") ?? "")
        // FIXME: 直して！
    }

    func search() {
        Task {
            let result = await okashiAPIClient.fetch()
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    if let items = data.item {
                        // FIXME: 直して
                    } else {
                        // FIXME: 直して
                    }
                }
            case .failure(let error):
                fatalError(error.localizedDescription)
            }
        }
    }
}
