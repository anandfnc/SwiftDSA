//
//  main.swift
//  LinkedList
//
//  Created by Anand on 24/06/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

import Foundation

let emptyList = LinkedList<Int>()
print("EmptyList: \(emptyList.description)")

let stringList = LinkedList<String>()
stringList.append(value: "Tiger")
print(stringList.description)

_ = stringList.remove(value: "Tiger")
print(stringList.description)

stringList.append(value: "Lion")
stringList.append(value: "Elephant")
stringList.append(value: "Bear")
print(stringList.description)

let intList = LinkedList<Int>()
intList.append(value: 10)
intList.append(value: 5)
intList.append(value: 53)
intList.append(value: 32)
print(intList)

_ = intList.remove(value: 53)
print(intList)






