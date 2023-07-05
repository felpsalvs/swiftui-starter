//
//  ContentView.swift
//  swiftui-starter
//
//  Created by Felipe Alves on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = []
    
    var body: some View {
        NavigationView {
            List(tasks) { task in
                NavigationLink(destination: DetailView(task: task)){
                    Text(task.title)
                }
            }
            .navigationBarTitle("Task List")
            .navigationBarItems(trailing:
                NavigationLink(destination: AddTaskView(tasks: $tasks)) {
                Image(systemName: "plus")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
