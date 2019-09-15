//
//  ViewModel.swift
//  MVVM
//
//  Created by Michael Sidoruk on 14/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
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
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
