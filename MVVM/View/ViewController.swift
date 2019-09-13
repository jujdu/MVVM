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
    
    private var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        viewModel = ViewModel()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            
            guard let viewModel = viewModel else { return UITableViewCell() }
            
            let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
            
            cell.viewModel = cellViewModel
            return cell
        }
        return UITableViewCell()
    }
    
    
}

