//
//  FontStyle.swift
//  MahjongAnalyzer
//
//  Created by Youngman on 2024/06/23.
//


import SwiftUI

enum FontStyle: String, CaseIterable {
    case titleExtraLarge
    case titleMiddle
    case body
    case bodyBold
    case description
    case descriptionBold
}

// MARK: - Properties for SwiftUI

extension FontStyle {
    var dynamicType: SwiftUI.Font {
        switch self {
        case .titleExtraLarge:
            return .largeTitle
            
        case .titleMiddle:
            return .title2
            
        case .body, .bodyBold:
            return .body
            
        case .description, .descriptionBold:
            return .subheadline
        }
    }
    
    var weight: SwiftUI.Font.Weight {
        switch self {
        case .titleExtraLarge, .titleMiddle:
            return .bold
            
        case .bodyBold, .descriptionBold:
            return .bold
            
        case .body, .description:
            return .regular
        }
    }
    /// 文字サイズ設定がデフォルト(.large)の場合に表示されるポイントサイズ（の目算値）
    var estimatedDefaultPointSize: CGFloat {
        switch self {
        case .titleExtraLarge:
            return 34
            
        case .titleMiddle:
            return 22.5
            
        case .body, .bodyBold:
            return 17
            
        case .description, .descriptionBold:
            return 15
        }
    }
}

// Mark: - Apply font style to Text

//  fontStyleはグローバル関数。
extension Text {
    func fontStyle(_ style: FontStyle) -> some View {
        self.font(.custom("NotoSerifJP-Light", size: style.estimatedDefaultPointSize))
            .fontWeight(style.weight)
    }
}
