//
//  TodoListViewViewModal.swift
//  TodoList
//
//  Created by Burit Boonkorn on 19/6/2566 BE.
//

import FirebaseFirestore
import Foundation

//ViewModel for  list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    /// Delete to do list item
    /// - Paarmeter id: item id to delete
    ///
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
