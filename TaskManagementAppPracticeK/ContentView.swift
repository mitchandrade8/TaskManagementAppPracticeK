//
//  ContentView.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.BG)
            .preferredColorScheme(.light)
        
    }
}

#Preview {
    ContentView()
}
