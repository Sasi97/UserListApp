//
//  ViewController.swift
//  UserListApp
//
//  Created by BridgeLabz Solutions LLP  on 5/17/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit
 class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    @IBOutlet var tableView: UITableView!
    override  func viewDidLoad()
    {
        super.viewDidLoad()
        DataRetreive.getData()
        //DataRetreive.display()
        
        loadData()
        
    }
    func loadData()
    {
        for _ in DataRetreive.Users
        {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return DataRetreive.Users.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard  let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier:"cell",for:indexPath) as! TableViewCell else{
            return UITableViewCell()
            
        }
        cell.name.text = "\(DataRetreive.Users[indexPath.row].name)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController
      
        self.present(detail, animated: true) {
            detail.username.text = "Name\t:\t\(DataRetreive.Users[indexPath.row].name)"
            detail.age.text = "Age\t:\t\(DataRetreive.Users[indexPath.row].age)"
            detail.phnum.text="MobileNum\t:\t\(DataRetreive.Users[indexPath.row].phnum)"
        }
    }


}

