# Testing Documentation

## Test Coverage Goals
- Core modules: 90%+
- UI components: 80%+

## Initial Test Plan

### Core Modules
1. HotkeyManager
   - [ ] Hotkey registration
   - [ ] Event handling
   - [ ] Cleanup

2. WindowManager
   - [ ] Window creation
   - [ ] State management
   - [ ] Show/hide behavior

3. CaptureView
   - [ ] Initial state
   - [ ] User interactions
   - [ ] Cancellation

## Test Implementation Strategy

### Mocking Requirements
- System APIs (Carbon)
- Window system interactions
- Screenshot capabilities

### Test Categories
1. Unit Tests
   - Core functionality
   - State management
   - Error handling

2. Integration Tests
   - Module interactions
   - System integration points

### Known Limitations
- UI testing setup pending
- System API mocking required

## Current Test Status

### HotkeyManager
- [x] Registration success/failure
- [x] Cleanup on deinit
- [x] Capture trigger
- Current coverage: ~85%

### WindowManager
- [x] Window state management
  - Show/hide capture interface
  - Prevent multiple captures
  - Basic screenshot capture flow
- [x] Window properties
- Current coverage: ~85%

### CaptureView
- [x] Initial state verification
- [x] Selection reset functionality
- [x] Basic state management
- [ ] Drag gesture handling (requires UI tests)
- Current coverage: ~75%

## Next Testing Focus
1. Preview App Integration
   - [ ] Launch/close cycle
   - [ ] Screenshot transfer
   - [ ] Error handling

2. OCR Implementation
   - [ ] Text extraction accuracy
   - [ ] Processing performance
   - [ ] Error handling

## Test Implementation Notes

### Current Limitations
1. **UI Testing Required**
   - Drag gesture functionality
   - Actual screenshot capture
   - Window appearance and properties

2. **Mock Requirements**
   - Screen capture functionality
   - Preview app integration
   - Window system interactions

### Next Test Implementation Steps
1. Create UI test target for gesture and interaction testing
2. Implement mocks for system integration points
3. Add Preview app integration tests

## Test Implementation Notes
1. **Mocking Strategy**
   - System APIs (Carbon, Preview app)
   - Window management
   - Screenshot capabilities

2. **Critical Test Paths**
   - Hotkey registration flow
   - Screenshot capture sequence
   - Window state transitions

3. **Known Test Gaps**
   - Carbon API integration points
   - Real screenshot capture in test environment 