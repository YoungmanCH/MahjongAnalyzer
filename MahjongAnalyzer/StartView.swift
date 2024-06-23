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
                Text("Welcome to MahjongAnalyzer")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: InputView()) {
                    Text("Start")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

