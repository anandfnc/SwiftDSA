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


numberBST.insert(newValue: 50)
numberBST.insert(newValue: 80)
numberBST.insert(newValue: 40)
numberBST.insert(newValue: 90)
numberBST.insert(newValue: 30)
print("InOrder:")
numberBST.inOrder()
print("\nPreOrder:")
numberBST.preOrder()
print("\nPostOrder:")
numberBST.postOrder()
print("\nNumber BST Count: \(numberBST.count())")
