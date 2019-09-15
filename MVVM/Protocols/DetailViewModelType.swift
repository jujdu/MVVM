//
//  DetailViewModelType.swift
//  MVVM
//
//  Created by Michael Sidoruk on 14/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
