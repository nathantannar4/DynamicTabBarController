//
//  Fruit.swift
//  Example
//
//  Created by Nathan Tannar on 11/14/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit

enum Fruit: String {
    case apple = "apple"
    case banana = "banana"
    case plum = "plum"
    case pumpkin = "pumpkin"
    case pear = "pear"
    case grapes = "grapes"
    
    func image() -> UIImage? {
        return UIImage(named: rawValue)
    }
    
    func color() -> UIColor {
        switch self {
        case .apple:
            return .red
        case .banana:
            return .yellow
        case .plum:
            return .blue
        case .pumpkin:
            return .orange
        case .pear:
            return .green
        case .grapes:
            return .purple
        }
    }
    
    static func all() -> [Fruit] {
        let fruits: [Fruit] = [.apple, .banana, .plum, .pumpkin, .grapes, .pear]
        return fruits
    }
}
