//
//  Extensions+Date.swift
//
//
//  Created by Bodgar Espinosa Miranda on 14/10/24.
//

import Foundation

public extension Double {
    func currencyFormat() -> String {
        self.formatted(.currency(code: "USD"))
    }
}

public extension Date {
    func isSameMonthAndYear(dateCompare: Date) -> Bool {
        let calendar = Calendar.current
        
        let components1 = calendar.dateComponents([.year, .month], from: self)
        let components2 = calendar.dateComponents([.year, .month], from: dateCompare)
        
        return components1.year == components2.year && components1.month == components2.month
    }
    
    func getDateName() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "es")
        formatter.dateFormat = "LLLL yyyy"
        
        let nombreDelMes = formatter.string(from: self)
        return nombreDelMes.capitalized
    }
}
