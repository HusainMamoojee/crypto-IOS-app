//
//  Double.swift
//  swiftCoin
//
//  Created by Husain Mamoojee on 2022/12/07.
//

import Foundation

extension Double{
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    private var numberFomatter : NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
        
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentString() -> String {
        guard let numberAsString = numberFomatter.string(for: self) else { return "" }
        return numberAsString + "%"
    }
}
