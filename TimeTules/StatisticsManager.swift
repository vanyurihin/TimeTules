//
//  ModelStatistic.swift
//  TimeTules
//
//  Created by Иван on 06.12.2024.
//

import SwiftUI

class StatisticsManager: ObservableObject {
    @Published var statistics: [String: Int] = [:]
    
    func addTime(taskName: String, seconds: Int) {
        statistics[taskName, default: 0] += seconds
    }
}

