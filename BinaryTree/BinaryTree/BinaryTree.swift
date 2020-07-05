//
//  BinaryTree.swift
//  BinaryTree
//
//  Created by Anand on 27/06/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

import Cocoa

public class BNode<T: Equatable> {
    var value: T

    public init(value: T) {
        self.value = value
    }

    var left: BNode?
    var right: BNode?

    var count: Int {
        return 1 + (left?.count ?? 0) + (right?.count ?? 0)
    }
}

extension BNode: Equatable {

    public static func == (lhs: BNode<T>, rhs: BNode<T>) -> Bool {
        return lhs === rhs
    }
}

extension BNode: CustomStringConvertible where T: CustomStringConvertible {

    public var description: String {
        return "Value [\(value.description)]" + " Left: [\(left?.description ?? "")]" + " Right: [\(right?.description ?? "")]" 
    }
}

class BinaryTree<T:Equatable> {

    var root: BNode<T>?

    var isEmpty: Bool {
        return root == nil ? true : false
    }

    func insert(newValue: T) {

        if isEmpty {
            root = BNode(value: newValue)
            return
        }

        let queue = Queue<BNode<T>>()
        queue.enqueue(value: root!)
        let newNode = BNode(value: newValue)

        while queue.isEmpty == false {

            let temp = queue.dequeue()
            if let left = temp?.left {
                queue.enqueue(value: left)
            } else {
                temp?.left = newNode
                break
            }

            if let right = temp?.right {
                queue.enqueue(value: right)
            } else {
                temp?.right = newNode
                break
            }
        }
    }

    var count: Int {
        if isEmpty {
            return 0
        }
        
        return root!.count
    }

}

extension BinaryTree: CustomStringConvertible where T: CustomStringConvertible {

    var description: String {
        return root?.description ?? ""
    }
}

