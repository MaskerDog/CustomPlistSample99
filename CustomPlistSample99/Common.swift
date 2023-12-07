//
//  Common.swift
//  CustomPlistSample99
//
//  Created by npc on 2023/12/06.
//

import Foundation

final class Common {
    static let shared = Common()
    // FIXME: 直して
    // シングルトン化
    private init() {
        guard let url = Bundle.main.url(forResource: "Application",
                                        withExtension: "plist") else { return }
        // Dataとして読み込み
        do {
            let data = try Data(contentsOf: url)
            let plistTemp = try PropertyListSerialization.propertyList(from: data,
                                                                           options: .mutableContainers,
                                                                           format: nil)

            guard let plist = plistTemp as? [String: String] else { return }
            self.plist = plist
        } catch {
            fatalError()
        }
    }

    func getValue(key: String) -> String? {
        // FIXME: 直して！
    }

}
