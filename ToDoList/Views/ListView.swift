//
//  ListView.swift
//  ToDoList
//
//  Created by Tayami Rai on 28/11/2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
    ItemModel(title: "First title", isCompleted: false),
    ItemModel(title: "Second title", isCompleted: true),
    ItemModel(title: "Third title", isCompleted: false)
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To do 📝")
        .toolbar{
            ToolbarItemGroup(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ListView()
        }
    }
}


