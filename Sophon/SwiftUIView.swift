//
//  ContentView.swift
//  Sophon
//
//  Created by Rezzan Tekinsen on 12/12/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var angle = 0.0
    @State private var borderThickness = 2.0
    @State private var offset: CGFloat = 0
    private let animationDuration: Double = 5.0 // Duration for the loop

    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.bck1)
                    .frame(width: 235, height: 230)
                    .offset(x: offset)
                Circle()
                    .fill(Color.bck2)
                    .frame(width: 148, height: 135)
                    .padding(.trailing, 95)
                    .offset(x: -offset)
                Circle()
                    .fill(Color.bck3)
                    .frame(width: 84, height: 77)
                    .padding(.trailing, 38)
                    .offset(x: offset / 2)
            }
            Button("Welcome!"){
    
                withAnimation {
                    if offset > 0 {
                        offset = -100
                    } else {
                        offset = 100
                    }
                }
            }
            .padding()
        }
        .onAppear {
                    startAnimationLoop()
        }
    }

    private func startAnimationLoop() {
        // Start a timer that triggers every animationDuration seconds
        Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: true) { _ in
            withAnimation(.easeInOut(duration: animationDuration)) {
                // Toggle the offset value for the animation
                offset = (offset > 0) ? -100 : 100
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
