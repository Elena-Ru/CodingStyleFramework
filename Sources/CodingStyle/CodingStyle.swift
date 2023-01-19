//
//  CodingStyle.swift
//  CodingStyle
//
//  Created by Елена Русских on 18.01.2023.
//

import Foundation


@propertyWrapper
public struct CodingStyle {
    public var style: Style
    public var wrappedValue: String {
        didSet {
            switch style{
            case .camelCase:
                self.wrappedValue = wrappedValue.camelCased
            case.kebabCase:
                self.wrappedValue = wrappedValue.kebabCased
            case .snakeCase:
                self.wrappedValue = wrappedValue.snakeCased
            }
        }
    }

    public init(wrappedValue: String, style: Style) {
        self.style = style
        switch style{
        case .camelCase:
            self.wrappedValue = wrappedValue.camelCased
        case.kebabCase:
            self.wrappedValue = wrappedValue.kebabCased
        case .snakeCase:
            self.wrappedValue = wrappedValue.snakeCased
        }
    }
}
