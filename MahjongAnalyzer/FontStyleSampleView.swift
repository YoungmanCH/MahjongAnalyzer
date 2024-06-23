//
//  FontStyleSampleView.swift
//  MahjongAnalyzer
//
//  Created by Youngman on 2024/06/23.
//

import SwiftUI

struct FontStyleSampleView: View {
    private var fontStyles = FontStyle.allCases
    
    var body: some View {
        List(fontStyles, id: \.self) { style in
            Text(style.rawValue)
                .fontStyle(style)
                .foregroundColor(.black)
            Text(displayString(from: style))
                .font(.system(size: style.estimatedDefaultPointSize))
                .fontWeight(style.weight)
                .foregroundColor(.gray)
        }
    }
    
    private func displayString(from style: FontStyle) -> String {
        "\(style.rawValue), estimated: \(style.estimatedDefaultPointSize) pt"
    }
}

#Preview {
    FontStyleSampleView()
}
