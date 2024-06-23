//
//  StartView.swift
//  MahjongAnalyzer
//
//  Created by Youngman on 2024/06/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("麻雀Analyzer")
                    .fontStyle(.titleExtraLarge)
                    .foregroundColor(.white)
                    .padding()
                
                NavigationLink(destination: InputView()) {
                    Text("Start")
                        .fontStyle(.titleMiddle)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.1, green: 0.9, blue: 0.4),
                        Color(red: 0.0, green: 0.7, blue: 0.9),
                        Color(red: 0.0, green: 0.9, blue: 0.5),
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .foregroundColor(.black)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    StartView()
}
