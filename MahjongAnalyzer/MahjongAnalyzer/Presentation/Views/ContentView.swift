//import SwiftUI
//
//struct ContentView: View {
//    @State private var isImagePickerPresented = false
//    @State private var selectedImage: UIImage?
//    @State private var isHistoryViewPresented = false
//    @State private var isLearningModeViewPresented = false
//    
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 20) {
//                Text("MahjongAnalyzer")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                
//                Button(action: {
//                    isImagePickerPresented = true
//                }) {
//                    Text("Upload Mahjong Hand Image")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                }
//                .sheet(isPresented: $isImagePickerPresented) {
//                    ImagePicker(selectedImage: $selectedImage)
//                }
//                
//                Button(action: {
//                    isHistoryViewPresented = true
//                }) {
//                    Text("View History")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.green)
//                        .cornerRadius(10)
//                }
//                .sheet(isPresented: $isHistoryViewPresented) {
//                    HistoryView()
//                }
//                
//                Button(action: {
//                    isLearningModeViewPresented = true
//                }) {
//                    Text("Learning Mode")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.orange)
//                        .cornerRadius(10)
//                }
//                .sheet(isPresented: $isLearningModeViewPresented) {
//                    LearningModeView()
//                }
//            }
//            .padding()
//        }
//    }
//}
//
//struct ImagePicker: UIViewControllerRepresentable {
//    @Binding var selectedImage: UIImage?
//    
//    func makeUIViewController(context: Context) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.delegate = context.coordinator
//        return picker
//    }
//    
//    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
//    
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//    
//    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//        let parent: ImagePicker
//        
//        init(_ parent: ImagePicker) {
//            self.parent = parent
//        }
//        
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            if let image = info[.originalImage] as? UIImage {
//                parent.selectedImage = image
//            }
//            picker.dismiss(animated: true)
//        }
//        
//        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//            picker.dismiss(animated: true)
//        }
//    }
//}
//
//struct HistoryView: View {
//    var body: some View {
//        Text("History")
//            .font(.largeTitle)
//    }
//}
//
//struct LearningModeView: View {
//    var body: some View {
//        Text("Learning Mode")
//            .font(.largeTitle)
//    }
//}
//
//#Preview {
//    ContentView()
//}
