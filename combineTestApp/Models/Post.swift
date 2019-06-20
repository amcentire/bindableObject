//
//  Post.swift
//  combineTestApp
//
//  Created by MacOS Test Account on 6/19/19.
//  Copyright © 2019 MacOS Test Account. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Codable, Hashable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
