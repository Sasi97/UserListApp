//
//  Model.swift
//  UserListApp
//
//  Created by BridgeLabz Solutions LLP  on 5/17/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
struct Model:Decodable
{
    let Users:[jsonData]
    
}
struct jsonData:Decodable
{
    let name:String
    let age:String
    let phnum:String
}
