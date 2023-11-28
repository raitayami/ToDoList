//
//  AddView.swift
//  ToDoList
//
//  Created by Tayami Rai on 28/11/2023.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldString: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type...", text: $textFieldString)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
        }
        .navigationTitle("Add an item ✒️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
