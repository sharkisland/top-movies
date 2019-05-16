//
//  ViewController.swift
//  Top Movies
//
//  Created by Ignacio Bononi on 05/01/19.
//  Copyright © 2019 Ignacio Bononi. All rights reserved.
//


import UIKit

class PostVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PostNetworking.getPosts { (response) in
            let posts = response.posts
            self.posts = posts
            self.tableView.reloadData()
        }
    }
}

extension PostVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell else {
            return UITableViewCell()
        }
        let post = posts[indexPath.row]
        cell.configure(withPost: post)
        return cell
    }
}
