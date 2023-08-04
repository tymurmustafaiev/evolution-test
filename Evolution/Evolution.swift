//
//  Evolution.swift
//  Evolution
//
//  Created by Timur Mustafaev on 02/08/2023.
//

import Foundation
import UIKit

// MARK: - Non working solution

public final class EvolutionInteractor {
    public init() {}

    public func foo() {}
    public func bar() {}
}

public extension EvolutionInteractor {
    struct Model {
        @Wrapper public var title: String = ""
        @Wrapper public var icon: UIImage?
        @Wrapper public var isEnabled: Bool
        let action: () -> Void

        public init(
            title: String,
            icon: UIImage? = nil,
            isEnabled: Bool = true,
            action: @escaping () -> Void
        ) {
            self.title = title
            self.icon = icon
            self.isEnabled = isEnabled
            self.action = action
        }
    }
}

// MARK: - Working solution
/*
public final class EvolutionInteractor {
    struct Model {
        @Wrapper public var title: String = ""
        @Wrapper public var icon: UIImage?
        @Wrapper public var isEnabled: Bool
        let action: () -> Void

        public init(
            title: String,
            icon: UIImage? = nil,
            isEnabled: Bool = true,
            action: @escaping () -> Void
        ) {
            self.title = title
            self.icon = icon
            self.isEnabled = isEnabled
            self.action = action
        }
    }

    public init() {}

    public func foo() {}
    public func bar() {}
}
*/
