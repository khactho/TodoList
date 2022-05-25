//
//  TodoListApp.swift
//  TodoList
//
//  Created by Nguyễn Khắc Thơ on 22/05/2022.
//

/*
 MVVM
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
*/


import SwiftUI

@main
struct TodoListApp: App {
    
    var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)        }
    }
}
