//
//  BinarySearchTree.swift
//  BinarySearchTree
//
//  Created by Anand on 09/07/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

class Node<T: Comparable> {

    var value: T
    var left: Node?
    var right: Node?

    init(value: T) {
        self.value = value
    }
}

class BinarySearchTree<T: Comparable> {

    var root: Node<T>?

    var isEmpty: Bool {
        return root == nil
    }

    func count() -> Int {
        return count(node: root)
    }

    func inOrder() {
        printInOrder(node: root)
    }

    func preOrder() {
        printPreOrder(node: root)
    }

    func postOrder() {
        printPostOrder(node: root)
    }

    func insert(newValue: T) {

        root = insert(newValue: newValue, node: root)
    }

    private func count(node: Node<T>?) -> Int {

        if node == nil {
            return 0
        }

        return 1 + count(node: node?.left) + count(node: node?.right)
    }

    private func insert(newValue: T, node: Node<T>?) -> Node<T>? {

        if node == nil {
            return Node(value: newValue)
        }

        if newValue < node!.value {
            node?.left = insert(newValue: newValue, node: node?.left)
        } else {
            node?.right = insert(newValue: newValue, node: node?.right)
        }

        return node
    }

    private func printInOrder(node: Node<T>?) {

        if node == nil {
            return
        }

        printInOrder(node: node!.left)
        print("\(node!.value) ", terminator:"")
        printInOrder(node: node!.right)
    }

    private func printPreOrder(node: Node<T>?) {

        if node == nil {
            return
        }

        print("\(node!.value) ", terminator:"")
        printPreOrder(node: node!.left)
        printPreOrder(node: node!.right)
    }

    private func printPostOrder(node: Node<T>?) {

        if node == nil {
            return
        }

        printPostOrder(node: node!.left)
        printPostOrder(node: node!.right)
        print("\(node!.value) ", terminator:"")
    }

}

