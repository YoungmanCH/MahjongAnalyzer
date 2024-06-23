//
//  InputView.swift
//  MahjongAnalyzer
//
//  Created by Youngman on 2024/06/23.
//

import SwiftUI

struct InputView: View {
    @State private var isImagePickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var manualInput = ""
    
    var body: some View {
        VStack {
            Text("Upload Mahjong Hand Image")
                .font(.title2)
                .padding()
            
            Button("Select Image") {
                isImagePickerPresented = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .sheet(isPresented: $isImagePickerPresented) {
                ImagePicker(selectedImage: $selectedImage)
            }
            
            Text("Or Enter Tiles Manually")
                .font(.title2)
                .padding()
            
            TextField("Enter tiles here", text: $manualInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            NavigationLink(destination: ResultView(selectedImage: selectedImage, manualInput: manualInput)) {
                Text("Analyze")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
