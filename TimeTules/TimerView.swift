//
//  TimerView.swift
//  TimeTules
//
//  Created by Иван on 30.11.2024.
//

import SwiftUI

struct TimerView: View {
    let taskName: String
    @State private var timer: Timer? = nil
    @State private var timeElapsed: Int = 0

    var body: some View {
        VStack(spacing: 40) {
            Text("Timer for: \(taskName)")
                .font(.title)
                .fontWeight(.bold)

            Text(formatTime(timeElapsed))
                .font(.system(size: 48, weight: .bold, design: .monospaced))
                .padding()

            HStack(spacing: 20) {
                Button("Start") {
                    startTimer()
                }
                .buttonStyle(Color.green)

                Button("Stop") {
                    stopTimer()
                }
                .buttonStyle(Color.red)
            }
        }
        .padding()
    }

    func formatTime(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }

    func startTimer() {
        stopTimer()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            timeElapsed += 1
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}

extension View {
    func buttonStyle(_ color: Color) -> some View {
        self.font(.title2)
            .padding()
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
