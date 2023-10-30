//
//  OffsetKey.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/30/23.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
