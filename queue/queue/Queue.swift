//
//  Queue.swift
//  Queue
//
//  Created by Anand on 24/06/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

public class Queue<T: Equatable & Comparable> {

    private var list = LinkedList<T>()

    public var isEmpty: Bool {
        return list.isEmpty
    }

    public func enqueue(value: T) {
        list.append(value: value)
    }

    public func dequeue() -> T? {

        guard isEmpty == false, let firstValue = list.first?.value else {
            return nil
        }

        _ = list.remove(value: firstValue)
        return firstValue
    }

    public func peek() -> T? {
        return list.first?.value
    }

}

extension Queue: CustomStringConvertible where T: CustomStringConvertible {

    public var description: String {
        return list.description
    }
}
