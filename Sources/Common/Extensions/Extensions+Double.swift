//
//  Extensions+Double.swift
//
//
//  Created by Bodgar Espinosa Miranda on 08/10/24.
//

import Foundation

public extension Double {
    func currencyFormat() -> String {
        self.formatted(.currency(code: "USD"))
    }
}
