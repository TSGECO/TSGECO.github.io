# API Reference

This section provides detailed documentation for all the modules, classes, functions, and methods in the TSG Ecosystem.

## Overview

The TSG Ecosystem is organized into several main modules:

| Module         | Description                                                       |
| -------------- | ----------------------------------------------------------------- |
| TSG Core       | Core data structures and operations for transcript segment graphs |
| TSG Visualizer | Visualization tools for rendering and exploring TSG data          |
| TSG Analytics  | Analytical tools and algorithms for TSG data processing           |
| TSG Converter  | Utilities for converting between TSG and other formats            |

## Module Installation

Each module can be installed separately:

```bash
# Install core functionality
pip install tsgeco-core

# Install visualization module
pip install tsgeco-viz

# Install analytics module
pip install tsgeco-analytics

# Install converter utilities
pip install tsgeco-converter

# Or install everything at once
pip install tsgeco[all]
```

## Import Structure

The TSG Ecosystem uses a hierarchical import structure:

```python
# Core components
from tsgeco import TSGraph, TSSegment, TSConnection

# Submodules
from tsgeco.visualizer import TSGVisualizer, TSGDashboard
from tsgeco.analytics import basic_stats, semantic_analysis, topic_modeling
from tsgeco.converter import import_from_srt, export_to_json
```

## API Stability

Our API follows [Semantic Versioning](https://semver.org/):

- **Stable APIs**: All public classes and functions documented in this reference are considered stable within a major version.
- **Experimental APIs**: Some newer features may be marked as experimental with a warning in their documentation.
- **Internal APIs**: Functions and classes with names starting with an underscore (`_`) are considered internal and may change without notice.

## Version Compatibility

| TSG Ecosystem Version | Python Version | Supported Until |
| --------------------- | -------------- | --------------- |
| 1.x                   | 3.8+           | December 2026   |
| 2.x                   | 3.9+           | Current         |

## Quick Links

- [Getting Started](../getting-started/index.md)
- [Basic Usage Examples](../user-guide/basic-usage.md)
- [Advanced Features](../user-guide/advanced-features.md)
- [Contribution Guidelines](https://github.com/TSGECO/tsgeco/blob/main/CONTRIBUTING.md)
