//
//  AddView.swift
//  TodoList
//
//  Created by Nguyễn Khắc Thơ on 22/05/2022.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @State var alertTitle: String = ""
    @State var Showalert: Bool = false

    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Text something here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.init(gray: 0.5, alpha: 0.3)))
                .cornerRadius(10)
                Button {
                    saveButtonPressed()
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
        .alert(isPresented: $Showalert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsApprovepriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsApprovepriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!!"
            Showalert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
