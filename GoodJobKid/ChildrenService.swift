//
//  Children.swift
//  GoodJobKid
//
//  Created by Stephen Done on 5/11/17.
//  Copyright © 2017 Stephen Done. All rights reserved.
//

import Foundation

protocol ChildrenDataService {
    func getChildren() -> [Child]
    func getChild(id: UUID) -> Child?
    func addChild(child: Child)
    func updateChild(child: Child)
    func removeChild(id: UUID)
}

class ChildrenService : ChildrenDataService {
    private var _children = [Child]()
    
    func getChildren() -> [Child] {
        return _children
    }
    
    func getChild(id: UUID) -> Child? {
        return _children.first(where: {$0.id == id})
    }
    
    func addChild(child: Child) {
        _children.append(child)
    }
    
    func updateChild(child: Child) {
        if let index = _children.index(where: {$0.id == child.id}) {
            _children.remove(at: index)
        }
        _children.append(child)
    }
    
    func removeChild(id: UUID) {
        if let index = _children.index(where: {$0.id == id}) {
            _children.remove(at: index)
        }
    }
}
