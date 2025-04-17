# Installation Guide

This guide covers all the ways to install and set up the TSG Ecosystem components.

## System Requirements

- Python 3.10 or higher
- 4GB RAM minimum (8GB recommended for larger datasets)
- Operating systems:
  - Windows 10 or higher
  - macOS 10.14 or higher
  - Linux (most modern distributions)

## Standard Installation

The simplest way to install the TSG Ecosystem is through pip:

```bash
pip install tsgraph
```

This installs the core library with basic functionality.

## Component-specific Installation

You can install specific components of the ecosystem:

```bash
# Core library only
pip install tsgeco-core

# Visualization components
pip install tsgeco-viz

# Analytics suite
pip install tsgeco-analytics

# Converter utilities
pip install tsgeco-converter
```

## Optional Dependencies

Install optional features using extras:

```bash
# Install with visualization dependencies
pip install tsgeco[viz]

# Install with analytics dependencies
pip install tsgeco[analytics]

# Install with all optional dependencies
pip install tsgeco[all]
```

## Development Installation

For contributors who want to install the development version:

```bash
git clone https://github.com/TSGECO/tsgeco.git
cd tsgeco
pip install -e ".[dev]"
```

This installs the package in development mode with additional tools for testing and development.

## GPU Support

For enhanced performance with large datasets, we recommend installing with GPU support:

```bash
pip install tsgeco[gpu]
```

### CUDA Requirements

If using the GPU-accelerated features:
- CUDA 11.0 or higher
- Compatible NVIDIA GPU with at least 4GB memory

## Docker Installation

We provide Docker images with all dependencies pre-installed:

```bash
# Pull the latest image
docker pull tsgeco/tsgeco:latest

# Or a specific version
docker pull tsgeco/tsgeco:1.0.0

# Run a container
docker run -it --rm tsgeco/tsgeco
```

## Verification

After installation, you can verify that everything is working correctly:

```bash
python -c "import tsgeco; print(tsgeco.__version__)"
```

You should see the version number of the installed package.

## Troubleshooting

### Common Issues

#### Missing Dependencies

If you encounter errors about missing dependencies, try:

```bash
pip install --upgrade tsgeco[all]
```

#### GPU Not Detected

If your GPU isn't being detected:

1. Verify your CUDA installation: `nvcc --version`
2. Check that PyTorch can see your GPU:
   ```python
   import torch; print(torch.cuda.is_available())
   ```

### Getting Help

If you continue to have installation problems, please:

1. Check our [GitHub issues](https://github.com/TSGECO/issues)
2. Join our [community forum](https://community.tsg-ecosystem.org)
