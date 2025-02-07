import SwiftUI

class WindowManager: ObservableObject {
    static let shared = WindowManager()
    
    @Published private(set) var isCapturing = false
    private var captureWindow: NSWindow?
    
    private init() {}
    
    @available(macOS 14.0, *)
    func startCapture() {
        guard !isCapturing else { return }
        
        let captureView = CaptureView()
        let hostingController = NSHostingController(rootView: captureView)
        
        let window = NSWindow(
            contentRect: NSScreen.main?.frame ?? .zero,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )
        
        window.level = .floating
        window.backgroundColor = .clear
        window.isOpaque = false
        window.hasShadow = false
        
        window.contentViewController = hostingController
        
        self.captureWindow = window
        self.isCapturing = true
        
        window.makeKeyAndOrderFront(nil)
    }
    
    func endCapture() {
        captureWindow?.close()
        captureWindow = nil
        isCapturing = false
    }
} 