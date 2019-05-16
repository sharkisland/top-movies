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


/*
 
 "vote_count": 446,
 "id": 447404,
 "video": false,
 "vote_average": 7,
 "title": "Pokémon Detective Pikachu",
 "popularity": 298.693,
 "poster_path": "\/wgQ7APnFpf1TuviKHXeEe3KnsTV.jpg",
 "original_language": "en",
 "original_title": "Pokémon Detective Pikachu",
 "genre_ids": [9648, 10751, 80, 14, 35, 878],
 "backdrop_path": "\/nDP33LmQwNsnPv29GQazz59HjJI.jpg",
 "adult": false,
 "overview": "In a world where people collect pocket-size monsters (Pokémon) to do battle, a boy comes across an intelligent monster who seeks to be a detective.",
 "release_date": "2019-05-03"
 */
