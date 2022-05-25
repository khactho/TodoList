//
//  ItemModel.swift
//  TodoList
//
//  Created by Nguyễn Khắc Thơ on 25/05/2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}
