//
//  CommentModel.swift
//  SimpleDemoMvvmSwiftUI
//
//  Created by Kamlakar Shimpi on 17/06/24.
//

import Foundation
struct CommentModel: Codable, Identifiable {
    let postID, id: Int?
    let name, email, body: String?

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}
