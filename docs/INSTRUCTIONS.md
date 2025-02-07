# Screen Reader Assistant - Project Guidelines

## Project Overview
A macOS menu bar application for screen capture and content analysis.

## Core Features (Initial Phase)

1. **Basic Application Structure**
   - Menu bar integration
   - Global hotkey system
   - Window management

2. **Screen Capture**
   - Area selection interface
   - ESC to cancel
   - Basic screenshot handling

## Development Guidelines

### Testing Requirements
- Unit tests for all core functionality
- Mock system interactions
- 90%+ coverage target for core modules

### Documentation Structure
- ARCHITECTURE.md: Technical design
- CHANGELOG.md: Version history
- INSTRUCTIONS.md: Development guidelines
- SPRINT.md: Sprint planning
- TESTING.md: Test specifications
- folder_structure.md: Project organization

### Version Control
- Descriptive commit messages
- Documentation updates with code changes
- Feature branch workflow

## Implementation Checklist

### Phase 1 (Current)
- [ ] Project structure setup
- [ ] Basic application skeleton
- [ ] Menu bar integration
- [ ] Window management framework

### Phase 2 (Planned)
- [ ] Hotkey system implementation
- [ ] Capture interface development
- [ ] Basic screenshot handling

## Technical Decisions Log

### 1. Hotkey Configuration
- Default hotkey set to Cmd+I (after verifying minimal conflicts)
- Hotkey will not be configurable to keep app simple

### 2. Screenshot & Annotation
- Single area selection per screenshot
- Will leverage macOS Preview app's existing annotation tools
- OCR capability will be implemented for text extraction
- Integration with system screenshot tools where possible

### 3. LLM Integration
- Using existing ChatGPT API key
- Starting with available GPT model (3.5/4)
- No local conversation history storage - utilizing ChatGPT's built-in history
- Will explore integration with official ChatGPT app if feasible

### 4. Integration Philosophy
- Prioritize using existing macOS tools and APIs where possible:
  - Screenshot/Preview tools for annotation
  - System APIs for window management
  - ChatGPT official app integration if possible

### Pending Decisions
- UI/UX specifics for popup management
- Window positioning and behavior
- Integration points with system tools 