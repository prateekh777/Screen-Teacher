import SwiftUI

@available(macOS 14.0, *)
struct CaptureView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            Text("Press ESC to cancel")
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(8)
        }
        .onKeyPress(.escape) {
            WindowManager.shared.endCapture()
            return .handled
        }
    }
}

@available(macOS 14.0, *)
#Preview {
    CaptureView()
} 