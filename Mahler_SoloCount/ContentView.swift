//
//  ContentView.swift
//  Mahler_SoloCount
//
//  Created by kwon ji won on 1/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Spacer()
            Image("one")
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4)
                )
            Spacer()
            Text("반복횟수: \(count)/1000번")
                .font(.title2)
            
            HStack(spacing: 10){
                Button("연습함!") {
                    count += 1
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(12)
                .frame(width: 140, height: 80)
                
                Button("앗 실수~") {
                    count -= 1
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
                .frame(width: 120, height: 80)
                
            }
            
            Text(" 못하면 연습 해야지? ")
                .font(.title3)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
