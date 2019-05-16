//
//  PostCell.swift
//  Top Movies
//
//  Created by Ignacio Bononi on 05/01/19.
//  Copyright © 2019 Ignacio Bononi. All rights reserved.
//

import UIKit
import Nuke

class PostCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var posterImageView: UIImageView!
    
    func configure(withPost post: Post) {
        titleLabel.text = post.title
        //bodyTextView.text = post.body
        let url = URL(string: "https://image.tmdb.org/t/p/w500/\(post.posterImg)")!
        Nuke.loadImage(with: url, into: posterImageView)
    }
    
    
    
}
