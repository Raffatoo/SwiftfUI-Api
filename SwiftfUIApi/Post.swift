//
//  Post.swift
//  SwiftfUIApi
//
//  Created by Cruz Torres on 21/06/21.
//

import Foundation

struct Post: Codable, Hashable, Identifiable {
    let id = UUID()
    let title: String
    let body: String
}
