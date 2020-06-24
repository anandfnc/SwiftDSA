//
//  LinkedList.swift
//  LinkedList
//
//  Created by Anand on 24/06/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

import Cocoa

public class Node<T: Equatable & Comparable> {
    var value: T

    public init(value: T) {
        self.value = value
    }

    var next: Node?
}


public class LinkedList<T: Equatable & Comparable> {
    private var head: Node<T>?

    public var isEmpty: Bool {
        return head == nil
    }

    public var first: Node<T>? {
        return head
    }

    public func append(value: T) {

        let newNode = Node(value: value)
        if isEmpty {
            head = newNode
            return
        }

        var current = head
        while current?.next != nil {
            current = current?.next
        }

        current?.next = newNode
    }

    public func remove(value: T) -> Bool {

        if isEmpty {
            return false
        }

        if head?.value == value {
            head = head?.next
            return true
        }

        var current = head
        var previous = head
        while current != nil && current?.value != value {
            previous = current
            current = current?.next
        }

        if current == nil {
            return false
        }

        previous?.next = current?.next
        current?.next = nil
        return true
    }

}

extension LinkedList: CustomStringConvertible where T: CustomStringConvertible {

    public var description: String {

        var str = ""
        var current = head
        while current != nil {
            str.append(current!.value.description)
            current = current?.next
            if current != nil {
                str.append(" , ")
            }
        }

        return str
    }
}
