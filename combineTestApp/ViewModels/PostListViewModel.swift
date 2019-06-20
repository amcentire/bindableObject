//
//  PostListViewModel.swift
//  combineTestApp
//
//  Created by MacOS Test Account on 6/19/19.
//  Copyright © 2019 MacOS Test Account. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class PostListViewModel: BindableObject {
    
    init() {
        fetchPost()
    }
    
    var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    
    func fetchPost() {
        WebService().getAllPosts {
            self.posts = $0
        }
    }
    
    let didChange = PassthroughSubject<PostListViewModel,Never>()
}
