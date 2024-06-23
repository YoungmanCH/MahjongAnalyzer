//
//  MahjongAnalyzerViewModel.swift
//  MahjongAnalyzer
//
//  Created by Youngman on 2024/06/23.
//

import SwiftUI

class MahjongAnalyzerViewModel: ObservableObject {
    @Published var tiles: [String] = []
    @Published var score: Int = 0
    @Published var yaku: [String] = []
    
    private let imageAnalyzer = ImageAnalyzer()
    private let scoreCalculator = ScoreCalculator()
    
    func analyzeImage(image: UIImage) {
        imageAnalyzer.analyze(image: image) { [weak self] tiles in
            self?.tiles = tiles
            self?.score = self?.scoreCalculator.calculateScore(tiles: tiles) ?? 0
            self?.yaku = self?.scoreCalculator.calculateYaku(tiles: tiles) ?? []
        }
    }
    
    func analyzeTiles(tiles: [String]) {
        self.tiles = tiles
        self.score = scoreCalculator.calculateScore(tiles: tiles)
        self.yaku = scoreCalculator.calculateYaku(tiles: tiles)
    }
}

class ImageAnalyzer {
    func analyze(image: UIImage, completion: @escaping ([String]) -> Void) {
        // 画像解析ロジックをここに実装
        completion(["1m", "2m", "3m", "4p", "5p", "6p", "7s", "8s", "9s"]) // 仮のデータ
    }
}

class ScoreCalculator {
    func calculateScore(tiles: [String]) -> Int {
        // 点数計算ロジックをここに実装
        return 12000 // 仮のスコア
    }
    
    func calculateYaku(tiles: [String]) -> [String] {
        // 役計算ロジックをここに実装
        return ["リーチ", "一発", "断么九"] // 仮の役
    }
}

