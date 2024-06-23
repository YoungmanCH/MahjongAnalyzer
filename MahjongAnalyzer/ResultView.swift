//
//  ResultView.swift
//  MahjongAnalyzer
//
//  Created by Youngman on 2024/06/23.
//

import SwiftUI

struct ResultView: View {
    @StateObject private var viewModel = MahjongAnalyzerViewModel()
    var selectedImage: UIImage?
    var manualInput: String
    
    var body: some View {
        VStack {
            if let selectedImage = selectedImage {
                Image(uiImage: selectedImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding()
            }
            
            Text("Tiles: \(viewModel.tiles.joined(separator: ", "))")
            Text("Score: \(viewModel.score)")
            
            if !viewModel.yaku.isEmpty {
                Text("Yaku:")
                    .font(.headline)
                    .padding(.top)
                
                ForEach(viewModel.yaku, id: \.self) { yaku in
                    Text(yaku)
                }
            }
        }
        .onAppear {
            if let selectedImage = selectedImage {
                viewModel.analyzeImage(image: selectedImage)
            } else {
                viewModel.analyzeTiles(tiles: manualInput.split(separator: " ").map(String.init))
            }
        }
        .padding()
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(selectedImage: nil, manualInput: "1m 2m 3m 4p 5p 6p 7s 8s 9s")
    }
}

