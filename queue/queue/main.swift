//
//  main.swift
//  Queue
//
//  Created by Anand on 24/06/20.
//  Copyright © 2020 SwiftDSA. All rights reserved.
//

import Foundation

var emptyStringQueue = Queue<String>()
print(emptyStringQueue)

var stringQueue = Queue<String>()
stringQueue.enqueue(value: "JonSnow")
stringQueue.enqueue(value: "Lannister")
stringQueue.enqueue(value: "Sansa")
stringQueue.enqueue(value: "Arya")
print(stringQueue)

print(stringQueue.dequeue()!)
print(stringQueue)

stringQueue.enqueue(value: "NedStark")
print(stringQueue)
