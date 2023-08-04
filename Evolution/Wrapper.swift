//
//  Wrapper.swift
//  Evolution
//
//  Created by Timur Mustafaev on 02/08/2023.
//

import Foundation

@propertyWrapper
public final class Wrapper<T> {

    public var projectedValue: Wrapper<T> {
        self
    }

    public var wrappedValue: T

    public var value: T {
        get { wrappedValue }
        set { wrappedValue = newValue }
    }

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }

    public convenience init(_ wrappedValue: T) {
        self.init(wrappedValue: wrappedValue)
    }
}
