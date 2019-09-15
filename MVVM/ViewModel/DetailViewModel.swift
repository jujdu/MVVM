//
//  DetailViewModel.swift
//  MVVM
//
//  Created by Michael Sidoruk on 14/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age)")
    }
    
    var age: Box<String?> = Box(nil)
    
    init(profile: Profile) {
        self.profile = profile
    }
}
