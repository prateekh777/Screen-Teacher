import XCTest
@testable import ScreenReaderAssistant

final class WindowManagerTests: XCTestCase {
    func testWindowManagerInitialState() {
        let manager = WindowManager.shared
        XCTAssertFalse(manager.isCapturing)
    }
    
    func testStartCapture() {
        let manager = WindowManager.shared
        manager.startCapture()
        XCTAssertTrue(manager.isCapturing)
        manager.endCapture() // Cleanup
    }
    
    func testEndCapture() {
        let manager = WindowManager.shared
        manager.startCapture()
        manager.endCapture()
        XCTAssertFalse(manager.isCapturing)
    }
} 