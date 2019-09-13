//
//  ViewModel.swift
//  MVVM
//
//  Created by Michael Sidoruk on 14/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    var profiles = [
        Profile(name: "Misha", secondName: "Sidoruk", age: 25),
        Profile(name: "Alibek", secondName: "Ismagulov", age: 25),
        Profile(name: "Elon", secondName: "Musk", age: 48)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
}
