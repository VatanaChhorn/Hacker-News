//
//  PostData.swift
//  Hacker News
//
//  Created by Chhorn Vatana on 7/17/20.
//  Copyright © 2020 Chhorn Vatana. All rights reserved.
//

import Foundation

struct Result :Decodable {
    let hits: [Post]
}

struct Post: Identifiable, Decodable {
    var id: Int {
        return Int(objectID)!
    }
    
    let title: String
    let objectID: String
    let url: String?
    let points: Int 
    
}
