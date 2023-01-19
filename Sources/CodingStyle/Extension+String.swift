//
//  Extension+String.swift
//  CodingStyle
//
//  Created by Елена Русских on 18.01.2023.
//

import Foundation
extension String {
   public var kebabCased: String {
        return  String(map{($0 == " ") || ( $0 == "_") ? "-" : $0})
    }
    public var snakeCased: String {
        return  String(map{($0 == " ") || ( $0 == "-") ? "_" : $0})
    }
    
    public var lowercasingFirst: String { prefix(1).lowercased() + dropFirst() }
    public var uppercasingFirst: String { prefix(1).uppercased() + dropFirst() }

    public var camelCased: String {
        guard !isEmpty else { return "" }
        let parts = components(separatedBy: .alphanumerics.inverted)
        let first = parts.first!.lowercasingFirst
        let rest = parts.dropFirst().map { $0.uppercasingFirst }

        return ([first] + rest).joined()
    }
}
