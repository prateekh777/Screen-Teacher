import SwiftUI

@main
struct ScreenReaderAssistantApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Kill any existing instances of the app
        killExistingInstances()
        
        setupMenuBar()
        
        // Hide dock icon
        NSApp.setActivationPolicy(.accessory)
    }
    
    func applicationWillTerminate(_ notification: Notification) {
        // Clean up resources
        if #available(macOS 14.0, *) {
            WindowManager.shared.endCapture()
        }
        statusItem = nil
    }
    
    private func killExistingInstances() {
        let currentPID = ProcessInfo.processInfo.processIdentifier
        let runningApps = NSWorkspace.shared.runningApplications
        
        for app in runningApps {
            if app.bundleIdentifier == Bundle.main.bundleIdentifier && app.processIdentifier != currentPID {
                app.terminate()
            }
        }
    }
    
    private func setupMenuBar() {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        if let button = statusItem?.button {
            button.image = NSImage(systemSymbolName: "magnifyingglass", accessibilityDescription: "Screen Reader Assistant")
        }
        
        setupMenu()
    }
    
    private func setupMenu() {
        let menu = NSMenu()
        
        if #available(macOS 14.0, *) {
            menu.addItem(NSMenuItem(title: "Start Capture", 
                                  action: #selector(startCapture), 
                                  keyEquivalent: "i"))
        }
        
        menu.addItem(NSMenuItem(title: "About Screen Reader Assistant", 
                              action: #selector(showAbout), 
                              keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit", 
                              action: #selector(NSApplication.terminate(_:)), 
                              keyEquivalent: "q"))
        
        statusItem?.menu = menu
    }
    
    @available(macOS 14.0, *)
    @objc private func startCapture() {
        WindowManager.shared.startCapture()
    }
    
    @objc private func showAbout() {
        NSApp.orderFrontStandardAboutPanel()
    }
} 