//
//  DetailViewController.swift
//  UserListApp
//
//  Created by BridgeLabz Solutions LLP  on 5/17/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBAction func backButton(_ sender: Any)
    {
        self.dismiss(animated: true){}
    }
    @IBOutlet var username: UILabel!
    @IBOutlet var phnum: UILabel!
    @IBOutlet var age: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
