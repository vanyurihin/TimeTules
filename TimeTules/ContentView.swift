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
            ZStack{
                Color.cyan.edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                Text("Welcome!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                NavigationLink("Begin") {
                    TaskSelectionView()
                }
                .frame(width: 100, height: 20)
                .font(.title2)
                .padding()
                .background(Color.blue)
                .foregroundColor(.black)
                .cornerRadius(10)
                
                NavigationLink("Statistics") {
                    // TaskStatisticView()
                }
                .frame(width: 100, height: 20)
                .font(.title2)
                .padding()
                .background(Color.blue)
                .foregroundColor(.black)
                .cornerRadius(10)
            }
            .padding()
        }
        }
        }
    }

#Preview {
    ContentView()
}
