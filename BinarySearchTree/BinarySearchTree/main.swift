//
//  main.swift
//  BinarySearchTree
//
//  Created by Anand on 09/07/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

import Foundation

let emptyBST = BinarySearchTree<String>()
emptyBST.inOrder()
print("\nEmpty BST Count: \(emptyBST.count())")

let numberBST = BinarySearchTree<Int>()
numberBST.inOrder()


numberBST.insert(newValue: 1000)

numberBST.insert(newValue: 990)
numberBST.insert(newValue: 1010)

numberBST.insert(newValue: 980)
numberBST.insert(newValue: 995)

numberBST.insert(newValue: 1020)
numberBST.insert(newValue: 1005)

numberBST.insert(newValue: 970)
numberBST.insert(newValue: 985)

numberBST.insert(newValue: 1030)
numberBST.insert(newValue: 1015)

print("InOrder:")
numberBST.inOrder()
print("\nPreOrder:")
numberBST.preOrder()
print("\nPostOrder:")
numberBST.postOrder()
print("\nNumber BST Count: \(numberBST.count())")

var node = numberBST.search(value: 100)
if let value = node?.value {
    print("Found: \(value)")
} else {
    print("Not Found: \(100)")
}

node = numberBST.search(value: 1015)
if let value = node?.value {
    print("Found: \(value)")
} else {
    print("Not Found: \(90)")
}

numberBST.delete(value: 1015)
print("InOrder:")
numberBST.inOrder()

numberBST.delete(value: 1000)
print("\nInOrder:")
numberBST.inOrder()

print()
