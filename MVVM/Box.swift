//
//  Box.swift
//  MVVM
//
//  Created by Michael Sidoruk on 14/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T) -> ()
    var listener: Listener?
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
}
