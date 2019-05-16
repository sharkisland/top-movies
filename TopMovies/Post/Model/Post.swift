//
//  Post.swift
//  Top Movies
//
//  Created by Ignacio Bononi on 05/01/19.
//  Copyright © 2019 Ignacio Bononi. All rights reserved.
//

import Foundation

struct Post {
    
    let voteCount: Int
    let id: Int
    let title: String
    let body: String
    let posterImg: String
    let backdropImg: String
    let releaseDate: String
    
    init?(dict: [String: Any]) {
        guard let voteCount = dict["vote_count"] as? Int,
            let id = dict["id"] as? Int,
            let title = dict["title"] as? String,
            let body = dict["overview"] as? String,
            let posterImg = dict["poster_path"] as? String,
            let backdropImg = dict["backdrop_path"] as? String,
            let releaseDate = dict["release_date"] as? String
            else { return nil }
        
        self.voteCount = voteCount
        self.id = id
        self.title = title
        self.body = body
        self.posterImg = posterImg
        self.backdropImg = backdropImg
        self.releaseDate = releaseDate
    }
}
