//
//  TodoListItem.swift
//  TodoList
//
//  Created by Burit Boonkorn on 19/6/2566 BE.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
        
}
