//
//  ItemModel.swift
//  ToDoList
//
//  Created by Tayami Rai on 29/11/2023.
//

import Foundation

struct ItemModel: Identifiable{
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}
