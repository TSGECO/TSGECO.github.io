# Basic Usage

<div class="hero">
    <h1>Basic Usage</h1>
    <p class="subtitle">Getting started with the TSG Ecosystem</p>
</div>

This guide covers the fundamental operations and concepts when working with the TSG Ecosystem.

## Core Concepts

Before diving into code examples, let's understand the key concepts:

### Transcript Segment Graph (TSG)

!!! info "What is a TSG?"
    A TSG consists of:

    - **Segments**: Individual pieces of transcript text with properties like start/end times and speaker information
    - **Connections**: Relationships between segments (sequential, overlapping, semantic, etc.)
    - **Metadata**: Additional information about the transcript or individual segments

## Working with TSG Graphs

### Creating a New Graph

```python
from tsgeco import TSGraph

# Initialize an empty graph
graph = TSGraph(name="Interview Transcript")

# Add metadata to the graph
graph.add_metadata(
    title="Interview with Dr. Smith",
    date="2025-04-10",
    duration="45:23",
    speakers=["Interviewer", "Dr. Smith"]
)
```

### Adding Segments

<div class="card">
    <h3>Segments</h3>
    <p>Segments represent individual pieces of transcript text with timing and speaker information.</p>
</div>

```python
# Add segments with speaker information
graph.add_segment(
    id="seg_001",
    start_time=0.0,
    end_time=4.2,
    text="Welcome to our interview series. Today we have Dr. Smith with us.",
    speaker="Interviewer"
)

graph.add_segment(
    id="seg_002",
    start_time=4.5,
    end_time=10.3,
    text="Thank you for having me. I'm excited to discuss our recent research findings.",
    speaker="Dr. Smith"
)
```

### Creating Connections

<div class="card">
    <h3>Connections</h3>
    <p>Connections establish relationships between segments in your graph.</p>
</div>

```python
# Sequential connection (timeline order)
graph.add_connection("seg_001", "seg_002", connection_type="sequential")

# Semantic connection (related content)
graph.add_connection("seg_005", "seg_023",
    connection_type="semantic",
    weight=0.85,
    properties={"topic": "research_methodology"}
)
```

### Querying the Graph

=== "By Speaker"
    ```python
    # Get all segments from a specific speaker
    dr_smith_segments = graph.get_segments_by_property(speaker="Dr. Smith")
    ```

=== "By Time Range"
    ```python
    # Find segments within a time range
    intro_segments = graph.get_segments_by_time(start=0.0, end=60.0)
    ```

=== "By Connection Type"
    ```python
    # Get all connections of a specific type
    semantic_connections = graph.get_connections_by_type("semantic")
    ```

## Working with TSG Files

### Saving and Loading

<div class="card-grid">
    <div class="card">
        <h3>Save to TSG</h3>
        <p>Save your graph to a portable TSG format file.</p>
        <pre><code class="language-python">graph.save("interview_transcript.tsg")</code></pre>
    </div>
    <div class="card">
        <h3>Load from TSG</h3>
        <p>Load a previously saved TSG file.</p>
        <pre><code class="language-python">loaded_graph = TSGraph.load("interview_transcript.tsg")</code></pre>
    </div>
</div>

### Importing from Other Formats

```python
from tsgeco.converter import import_from_srt, import_from_vtt

# Import from subtitle formats
graph_from_srt = import_from_srt("subtitles.srt")
graph_from_vtt = import_from_vtt("subtitles.vtt")
```

### Exporting to Other Formats

```python
from tsgeco.converter import export_to_json, export_to_csv

# Export to common formats
export_to_json(graph, "transcript_data.json")
export_to_csv(graph, "transcript_segments.csv", "transcript_connections.csv")
```

## Basic Analysis

!!! example "Example: Basic Statistics"
    ```python
    from tsgeco.analytics import basic_stats, speaker_analysis
    
    # Get basic statistics about the graph
    stats = basic_stats(graph)
    print(f"Total segments: {stats['segment_count']}")
    print(f"Average segment duration: {stats['avg_segment_duration']:.2f}s")
    
    # Analyze speaker patterns
    speaker_stats = speaker_analysis(graph)
    for speaker, data in speaker_stats.items():
        print(f"{speaker}: {data['total_speaking_time']:.2f}s, {data['segment_count']} segments")
    ```

## Next Steps

<div class="card">
    <h3>Advanced Features</h3>
    <p>Ready to take your TSG usage to the next level?</p>
    <a href="./advanced-features.md" class="md-button md-button--primary">Learn about advanced features</a>
</div>
