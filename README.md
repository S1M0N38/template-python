<div align="center">

# Python Project Template

*A modern, minimal Python project template with automated tooling*

</div>

---

## Overview

A carefully crafted Python project template that provides a solid foundation for your next Python project. Built with modern development practices in mind, featuring automated testing, linting, type checking, and seamless CI/CD integration.

## Features

**Development Tools**
- **uv** – Lightning-fast Python package management
- **Ruff** – Blazing fast Python linter and formatter  
- **Pyright** – Static type checker for Python
- **pytest** – Comprehensive testing framework

**Automation**
- **GitHub Actions** – Automated CI/CD pipeline
- **Release Please** – Automated semantic versioning and releases
- **PyPI Publishing** – Trusted publishing to PyPI

## Quick Start

### Prerequisites

- Python 3.11+
- [uv](https://docs.astral.sh/uv/) package manager

### Setup

```bash
# Clone the template
git clone https://github.com/S1M0N38/template-python.git
cd template-python

# Activate environment
uv venv
source .venv/bin/activate

# Create and activate environment
uv sync --all-extras
```

### Development Commands

```bash
# Run tests
pytest

# Lint and format code
ruff check
ruff format

# Type check
basedpyright

# Run the application
python -m template_python
```

## Project Structure

```
template-python/
├── src/template_python/    # Main package source
├── tests/                  # Test suite
├── .github/workflows/      # CI/CD automation
├── pyproject.toml         # Project configuration
└── README.md              # This file
```

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details on:

- Setting up the development environment
- Code style and conventions
- Testing guidelines
- Release process

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**Ready to build something amazing?**

[Get Started](#quick-start) • [Contribute](CONTRIBUTING.md) • [Report Issues](https://github.com/S1M0N38/template-python/issues)

</div>
