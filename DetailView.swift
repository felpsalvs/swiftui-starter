//
//  DetailView.swift
//  swiftui-starter
//
//  Created by Felipe Alves on 05/07/23.
//

import SwiftUI

struct DetailView: View {
    let item: Item
    
    var body: some View{
        VStack {
            Text(item.title)
                .font(.largeTitle)
            Text(item.description)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Item(title: "exemplo de titulo", description: "exemplo descrição"))
    }
}
