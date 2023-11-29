//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Tayami Rai on 29/11/2023.
//

import Foundation


class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title: "First title", isCompleted: false),
            ItemModel(title: "Second title", isCompleted: true),
            ItemModel(title: "Third title", isCompleted: false)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItems(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
}
