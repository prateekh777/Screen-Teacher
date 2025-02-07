# Screen Reader Assistant - Technical Architecture

## High-Level Architecture

### 1. Main Application (Swift/SwiftUI)
- Menu bar-based application
- Global hotkey system (Cmd+Shift+I)
- Window and state management
- Module coordination

### 2. Core Modules
- **HotkeyManager**: Global hotkey registration and handling
- **WindowManager**: Application window state management
- **CaptureView**: Screen area selection interface
- **PreviewHelper**: Screenshot and annotation handling

## Technical Decisions

### 1. Application Structure
- Menu bar application (no dock icon)
- SwiftUI for user interface
- Modular architecture for testability

### 2. Hotkey System
- Global hotkey: Cmd+Shift+I
- Carbon API integration for system-wide hotkey
- Non-configurable for initial versions

### 3. Window Management
- Floating capture interface
- ESC to cancel capture
- Single active capture session

### 4. Testing Strategy
- XCTest framework
- High unit test coverage (90%+ target)
- Mocked system interactions

## Pending Decisions
- LLM integration approach
- Screenshot annotation implementation
- OCR integration strategy 