//
//  AddTaskView.swift
//  swiftui-starter
//
//  Created by Felipe Alves on 05/07/23.
//

import SwiftUI

struct AddTaskView: View {
    @Binding var tasks: [Task]
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var dueDate = Date()
    
    var body: some View {
        Form {
            Section(header: Text("Task Details")){
                TextField("Title", title: $title)
                TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
            }
            
            Button(action: {
                let newTask = Task(title: title, description: description, dueDate: dueDate)
                tasks.append(newTask)
            }) {
                Text("Add Task")
            }
        }
        .navigationBarTitle("Add Task")
    }
}
