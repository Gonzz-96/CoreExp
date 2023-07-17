//
//  ResourceConsumingType.swift
//  CoreExp
//
//  Created by Gonzalo Campos on 16/07/23.
//

import Foundation

struct ResourceConsumingType {

    let list: [Double]

    init() {
        var numbers = [Double]()
        for i in 0..<1_000_000 {
            numbers.append(Double(i))
        }
        list = numbers
    }

}
