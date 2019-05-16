//
//  GetPostsResponse.swift
//  Top Movies
//
//  Created by Ignacio Bononi on 05/01/19.
//  Copyright © 2019 Ignacio Bononi. All rights reserved.
//

import Foundation

struct GetPostsResponse {
    
    let posts: [Post]
    
    init(json: Any) throws {
        guard let array = json as? [[String: Any]] else { throw NetworkingError.someError }
        
        var posts = [Post]()
        for item in array {
            guard let post = Post(dict: item) else { continue }
            posts.append(post)
        }
        self.posts = posts
    }
    
}
