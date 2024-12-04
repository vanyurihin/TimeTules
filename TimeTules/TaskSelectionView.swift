//
//  TaskSelectedView.swift
//  TimeTules
//
//  Created by Иван on 30.11.2024.
//

import SwiftUI

struct TaskSelectionView: View {
    var body: some View {
        VStack{
            Text("Select a case")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()  .frame(height: 100)
            
            HStack{
                NavigationLink("Work") {
                    TimerView(taskName: "Работа")
                }
                .taskButtonStyle()
                
                NavigationLink("Studies") {
                    TimerView(taskName: "Studies" )
                }
                .taskButtonStyle()
            }
            HStack{
                NavigationLink("Relax") {
                    TimerView(taskName: "Отдых")
                }
                .taskButtonStyle()
                
                NavigationLink("+") {
                    TimerView(taskName: "Отдых")
                }
                .taskButtonStyle()
                
            }
                .padding()
        }
               }
           }
  
extension View {
    func taskButtonStyle() -> some View {
        self.font(.title)
            .frame(width: 100 , height: 30)
            .padding(20)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

#Preview {
    TaskSelectionView()
}
