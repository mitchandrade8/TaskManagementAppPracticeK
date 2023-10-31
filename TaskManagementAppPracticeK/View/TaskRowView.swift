//
//  TaskRowView.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/30/23.
//

import SwiftUI

struct TaskRowView: View {
    
    @Binding var task: Task
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Circle()
                .fill(.darkBlue)
                .frame(width: 10, height: 10)
                .padding(4)
                .background(.white.shadow(.drop(color: .black.opacity(0.1), radius: 3)), in: .circle)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(task.taskTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .strikethrough(task.isCompleted, pattern: .solid, color: .black)
                
                Label(task.creationDate.format("hh:mm a"), systemImage: "clock")
                    .font(.caption)
                    .foregroundStyle(.black)
            }
        }
        .hSpacing(.leading)
    }
}

#Preview {
    ContentView()
}
