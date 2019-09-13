//
//  ViewController.swift
//  MVVM
//
//  Created by Michael Sidoruk on 13/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        profiles = [
            Profile(name: "Misha", secondName: "Sidoruk", age: 25),
            Profile(name: "Alibek", secondName: "Ismagulov", age: 25),
            Profile(name: "Elon", secondName: "Musk", age: 48)
        ]
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            let profile = profiles[indexPath.row]
            
            cell.ageLbl.text = "\(profile.age)"
            cell.fullNameLbl.text = "\(profile.name) \(profile.secondName)"
            return cell
        }
        return UITableViewCell()
    }
    
    
}

