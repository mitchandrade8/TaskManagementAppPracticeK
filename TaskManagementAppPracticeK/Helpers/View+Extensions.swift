//
//  View+Extensions.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/29/23.
//

import SwiftUI

/// Custom View Extensions

extension View {
    /// Custom Spacers
    @ViewBuilder
    func hSpacing(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    func vSpacing(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}
