//
//  DataRetreive.swift
//  UserListApp
//
//  Created by BridgeLabz Solutions LLP  on 5/17/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
public class DataRetreive
{
    

   static var Users=[jsonData]()
   static func  getData()
    {
        
        guard let url = try Bundle.main.url(forResource: "userData", withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONDecoder().decode(Model.self,from: data)
            if json.Users.count>0
            {
                Users=json.Users
                
            }
            
        } catch let error as NSError
        {
            print(error.localizedDescription)
        }
    }
    static func display()
    {
        for i in 0..<Users.count
        {
            print(Users[i].name)
        }
    }
}
