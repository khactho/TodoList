//
//  AddView.swift
//  TodoList
//
//  Created by Nguyễn Khắc Thơ on 22/05/2022.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("Text something here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.init(gray: 0.5, alpha: 0.3)))
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
        .navigationTitle("Add an Item ✏️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
