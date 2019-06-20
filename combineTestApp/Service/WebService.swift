//
//  WebService.swift
//  combineTestApp
//
//  Created by MacOS Test Account on 6/19/19.
//  Copyright © 2019 MacOS Test Account. All rights reserved.
//

import Foundation

class WebService {
    
    func getAllPosts(completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }
            guard let posts = try? JSONDecoder().decode([Post].self, from: data)  else { return }
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
        
  
        
        
//        var blah: [Post] = [] {
//            didSet {
//                print("yay")
//            }
//        }
//        URLSession.shared.dataTaskPublisher(for: url)
//            .receive(on: DispatchQueue.main)
//            .decode(type: [Post].self, decoder: JSONDecoder())
//            .assign(to: blah)
        
    }

}
