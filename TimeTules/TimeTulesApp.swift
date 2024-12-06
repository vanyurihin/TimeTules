//
//  TimeTulesApp.swift
//  TimeTules
//
//  Created by Иван on 30.11.2024.
//

import SwiftUI

@main
struct TimeTrackingApp: App {
    @StateObject private var statisticsManager = StatisticsManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(statisticsManager)
        }
    }
}
