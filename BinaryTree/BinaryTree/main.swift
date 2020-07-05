//
//  main.swift
//  BinaryTree
//
//  Created by Anand on 27/06/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

import Foundation

var binaryTree = BinaryTree<Int>()
print("Empty: " + binaryTree.description)
print("Count: " + "\(binaryTree.count)")

binaryTree.insert(newValue: 80)
print("Binary Tree " + binaryTree.description)
print("Count: " + "\(binaryTree.count)")

binaryTree.insert(newValue: 70)
print("Binary Tree " + binaryTree.description)
print("Count: " + "\(binaryTree.count)")

binaryTree.insert(newValue: 90)
print("Binary Tree " + binaryTree.description)
print("Count: " + "\(binaryTree.count)")

binaryTree.insert(newValue: 60)
print("Binary Tree " + binaryTree.description)
print("Count: " + "\(binaryTree.count)")
