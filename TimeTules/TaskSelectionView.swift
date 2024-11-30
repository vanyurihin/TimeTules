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
            Text("Выберите дело")
                           .font(.largeTitle)
                           .fontWeight(.bold)

                       NavigationLink("Work") {
                           TimerView(taskName: "Работа")
                       }
                       .taskButtonStyle()

                       NavigationLink("Studies") {
                           TimerView(taskName: "Studies" )
                       }
                       .taskButtonStyle()

                       NavigationLink("Relax") {
                           TimerView(taskName: "Отдых")
                       }
                       .taskButtonStyle()
                   }
                   .padding()
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
