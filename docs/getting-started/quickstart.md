# Quick Start Guide

This guide will help you get up and running with the TSG Ecosystem quickly.

## Installation

### Install from PyPI

```bash
pip install tsgeco
```

For specific components:

```bash
# Install just the core library
pip install tsgeco-core

# Install with visualization support
pip install tsgeco[viz]

# Install with analytics support
pip install tsgeco[analytics]

# Full installation with all dependencies
pip install tsgeco[all]
```

## Basic Usage Example

Here's a simple example of working with the TSG format:

```python
from tsgeco import TSGraph

# Create a new TSG graph
graph = TSGraph()

# Add transcript segments
graph.add_segment("segment1", start_time=0.0, end_time=2.5, text="Hello, this is")
graph.add_segment("segment2", start_time=2.5, end_time=5.0, text="a demonstration of TSG.")

# Add connections between segments
graph.add_connection("segment1", "segment2", connection_type="sequential")

# Save the graph
graph.save("my_transcript.tsg")

# Later, load the graph
loaded_graph = TSGraph.load("my_transcript.tsg")

# Access segments and their connections
segments = loaded_graph.get_segments()
for segment_id, segment in segments.items():
    print(f"Segment {segment_id}: {segment.text} ({segment.start_time}-{segment.end_time}s)")
    connections = loaded_graph.get_connections(segment_id)
    if connections:
        print(f"  Connected to: {', '.join(connections)}")
```

## Using the Visualizer

To visualize your TSG data:

```python
from tsgeco.visualizer import TSGVisualizer

# Create a visualizer with your graph
viz = TSGVisualizer(graph)

# Generate an interactive HTML visualization
viz.to_html("transcript_visualization.html")

# Or display directly in a Jupyter notebook
viz.display()
```

## Next Steps

- Learn more about the TSG Core Library
- Explore advanced visualization options
- Check out our analytics tools
- View [complete examples](../user-guide/basic-usage.md)

## Getting Help

If you encounter any issues:

- Check our [GitHub issues](https://github.com/TSGECO/issues)
- Join our [community forum](https://community.tsg-ecosystem.org)
