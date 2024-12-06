//
//  TaskStatisticView.swift
//  TimeTules
//
//  Created by Иван on 30.11.2024.
//

import SwiftUI

struct TaskStatisticView: View {
    @EnvironmentObject var statisticsManager: StatisticsManager

    var body: some View {
        VStack {
            Text("Task Statistics")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            List {
                ForEach(statisticsManager.statistics.sorted(by: { $0.key < $1.key }), id: \.key) { task, time in
                    HStack {
                        Text(task)
                            .font(.title2)
                        Spacer()
                        Text(formatTime(time))
                            .font(.title3)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }

    func formatTime(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}
