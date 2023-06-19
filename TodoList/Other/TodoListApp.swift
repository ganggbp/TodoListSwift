//
//  TodoListApp.swift
//  TodoList
//
//  Created by Burit Boonkorn on 19/6/2566 BE.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
