//
//  ItemModel.swift
//  TodoList
//
//  Created by Nguyễn Khắc Thơ on 25/05/2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
        
        func updateCompleted() -> ItemModel {
            return ItemModel(id: id, title: title, isCompleted: !isCompleted)
        }
    
    }
}


