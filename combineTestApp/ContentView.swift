//
//  ContentView.swift
//  combineTestApp
//
//  Created by MacOS Test Account on 6/19/19.
//  Copyright © 2019 MacOS Test Account. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var model = PostListViewModel()
    
    var body: some View {
        VStack {
            List(model.posts) { post in
                Text(post.title)
                Text(post.body)
            }
        }
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
