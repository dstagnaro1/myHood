//
//  ViewController.swift
//  myHood
//
//  Created by Daniel Stagnaro on 6/17/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        let post1 = Post(imagePath: "", title: "This is a really cool house", description: "They have made their house completely out of paper maché")
        let post2 = Post(imagePath: "", title: "This house is blue", description: "There is a blue man living inside of it! How odd...")
        let post3 = Post(imagePath: "", title: "This house is the house of blues", description: "Johnny cash and others would be proud. The music here is making my ears bleed but thats OK because it's good music.")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData() 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]

        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
            
        }
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    @IBAction func newPostPressed(sender: UIButton) {
        
    }

}

