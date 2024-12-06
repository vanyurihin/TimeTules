//
//  ContentView.swift
//  TimeTules
//
//  Created by Иван on 30.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Welcome, TimeTules!")
                        .font(.system(size: 40))
                        .bold()
                        .multilineTextAlignment(.center)

                    Spacer() .frame(height: 60)

                    VStack(spacing: 100) {
                        Image("Timer")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .padding()
                            .cornerRadius(10)

                        Text("Select a task to begin")
                            .font(.title2)
                            .foregroundColor(.black)
                    }

                    HStack(spacing: 50) {
                        NavigationLink("Begin") {
                            TaskSelectionView()
                        }
                        .frame(width: 100, height: 20)
                        .font(.title2)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)

                        NavigationLink("Statistics") {
                            TaskStatisticView()
                        }
                        .frame(width: 100, height: 20)
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
