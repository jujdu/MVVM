//
//  TableViewCell.swift
//  MVVM
//
//  Created by Michael Sidoruk on 14/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLbl.text = viewModel.fullName
            ageLbl.text = viewModel.age
        }
    }
}
