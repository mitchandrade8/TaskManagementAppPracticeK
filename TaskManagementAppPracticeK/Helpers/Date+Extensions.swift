//
//  Date+Extensions.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/29/23.
//

import SwiftUI

/// Date Extensions Needed for building UI
extension Date {
    /// Custom Date Format
    func format(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
}
