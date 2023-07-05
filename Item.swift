//
//  Item.swift
//  swiftui-starter
//
//  Created by Felipe Alves on 05/07/23.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var title: String
    var description: String
}
