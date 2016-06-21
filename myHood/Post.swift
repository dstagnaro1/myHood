//
//  Post.swift
//  myHood
//
//  Created by Daniel Stagnaro on 6/17/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _titleText: String!
    private var _postDesc: String!
    
    var imagePath: String {
        return _imagePath
    }
    var titleText: String {
        return _titleText
    }
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String ){
        self._imagePath = imagePath
        self._titleText = title
        self._postDesc = description
    }
    
    override init(){
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._postDesc = aDecoder.decodeObjectForKey("description") as? String
        self._titleText = aDecoder.decodeObjectForKey("title") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._postDesc, forKey: "description")
        aCoder.encodeObject(self._titleText, forKey: "title")
    }
    
}