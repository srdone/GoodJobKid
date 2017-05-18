//
//  Child.swift
//  GoodJobKid
//
//  Created by Stephen Done on 5/10/17.
//  Copyright © 2017 Stephen Done. All rights reserved.
//

import Foundation

protocol Congratulateable {
    var congratsCount: Int { get }
    func congratulate()
}

protocol Person {
    var name: String { get set }
    var id: UUID { get }
}

class Child : Person, Congratulateable {
    private var _id: UUID
    private var _congratsCount = 0
    
    var name = "Default Name"
    var id : UUID {
        get {
            return _id
        }
    }
    var congratsCount: Int {
        get {
            return _congratsCount
        }
    }
    
    init(id: UUID = UUID(), name: String) {
        self._id = id
        self.name = name
    }
    
    func congratulate() {
        _congratsCount += 1
    }
}
