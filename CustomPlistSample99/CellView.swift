//
//  CellView.swift
//  CustomPlistSample99
//
//  Created by npc on 2023/12/06.
//

import SwiftUI

struct CellView: View {
    let item: Item
    var body: some View {
        HStack {
            // FIXME: 直して！
        }
        .frame(height: 150)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    CellView(item:
                Item(id: "10",
                     name: "ますかわ製菓が誇る美味しいお菓子詰め合わせセット",
                     maker: "益川製菓",
                     price: "100",
                     type: "chocolate",
                     regist: "2020年10月10日",
                     url: "https://www.jec.ac.jp/",
                     area: nil,
                     image: "https://maskerdog.github.io/jsonTest/goldenretriever.jpg",
                     comment: "おいしいおかしでした"))
}
