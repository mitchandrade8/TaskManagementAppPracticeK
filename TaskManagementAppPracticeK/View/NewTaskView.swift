//
//  NewTaskView.swift
//  TaskManagementAppPracticeK
//
//  Created by Mitch Andrade on 10/31/23.
//

import SwiftUI

struct NewTaskView: View {
    
    /// View Properties
    @Environment(\.dismiss) private var dismiss
    @State private var taskTitle: String = ""
    @State private var taskDate: Date = .init()
    @State private var taskColor: Color = .taskColor1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .tint(.red)
            })
            .hSpacing(.leading)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Task Title")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                TextField("Go for a Walk!", text: $taskTitle)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 15)
                    .background(.white.shadow(.drop(color: .black.opacity(0.25), radius: 2)), in: .rect(cornerRadius: 10))
            })
            .padding(.top, 5)
            
            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Task Date")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                    DatePicker("", selection: $taskDate)
                        .datePickerStyle(.compact)
                        .scaleEffect(0.9, anchor: .leading)
                })
                .padding(.top, 5)
                /// Giving some space for tapping
                .padding(.trailing, -15)
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Task Color")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                    let colors: [Color] = [.taskColor1, .taskColor2, .taskColor3, .taskColor4, .taskColor5]
                    
                    HStack(spacing: 0) {
                        ForEach(colors, id: \.self) { color in
                            Circle()
                                .fill(color)
                                .frame(width: 20, height: 20)
                                /// Showing which color is currently selected
                                .background(content: {
                                    Circle()
                                        .stroke(lineWidth: 2)
                                        .opacity(taskColor == color ? 1 : 0)
                                })
                                .hSpacing(.center)
                                .contentShape(.rect)
                                .onTapGesture {
                                    withAnimation(.snappy) {
                                        taskColor = color
                                    }
                                }
                        }
                    }
                })
                .padding(.top, 5)
            }
        })
        .padding(15)
    }
}

#Preview {
    NewTaskView()
        .vSpacing(.bottom)
}
