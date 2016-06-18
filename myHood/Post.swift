//
//  Post.swift
//  myHood
//
//  Created by Daniel Stagnaro on 6/17/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import Foundation

class Post {
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
    
}