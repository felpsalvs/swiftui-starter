//
//  ContentView.swift
//  swiftui-starter
//
//  Created by Felipe Alves on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [Item] = []
    @State private var newItemTitle = ""
    @State private var newItemDescription = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(destination: DetailView(item: item)) {
                        Text(item.title)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("Items")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: addItem) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    func addItem() {
        let newItem = Item(title: newItemTitle, description: newItemDescription)
        items.append(newItem)
        newItemTitle = ""
        newItemDescription = ""
    }
    
    func deleteItems(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
