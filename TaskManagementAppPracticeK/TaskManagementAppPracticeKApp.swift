//
//  TaskManagementAppPracticeKApp.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/29/23.
//

import SwiftUI

@main
struct TaskManagementAppPracticeKApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
