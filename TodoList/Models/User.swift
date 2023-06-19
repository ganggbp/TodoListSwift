//
//  User.swift
//  TodoList
//
//  Created by Burit Boonkorn on 19/6/2566 BE.
//

import Foundation

//Make this Codable because we're going to employ a handy trick via extension to be able to convert anything that's codable into a nice dictionary for us with strings and values that we can put in database
struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}


