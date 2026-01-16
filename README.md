<div align="center">

# Python Project Template

</div>

A minimal Python project template with automated tooling and development workflows.

## Features

- **[uv](https://docs.astral.sh/uv/)** - Fast Python package management
- **[ruff](https://docs.astral.sh/ruff/)** - Python linter and formatter
- **[ty](https://github.com/google/ty)** - Static type checker
- **[pytest](https://docs.pytest.org/)** - Testing framework
- **[commitizen](https://commitizen-tools.github.io/commitizen/)** - Commit message standardization
- **[yamlfmt](https://github.com/google/yamlfmt)** - YAML formatter
- **[mdformat](https://mdformat.readthedocs.io/)** - Markdown formatter
- **[pyproject-fmt](https://github.com/tox-dev/pyproject-fmt)** - pyproject.toml formatter
- **[GitHub Actions](https://docs.github.com/en/actions)** - CI/CD workflows

## Quick Start

### Prerequisites

- [uv](https://docs.astral.sh/uv/) installed

### Setup

```bash
# Clone and enter directory
git clone https://github.com/S1M0N38/template-python.git
cd template-python

# Install all dependencies (creates venv, installs Python 3.13+ if needed)
make install

# Verify installation
make all
```

### Development

Run `make help` to see all available commands.

## Project Structure

```
.
├── .claude/                 # Claude Code configuration
├── .github/workflows/       # CI/CD automation
├── src/template_python/     # Main package source
├── tests/                   # Test suite
├── Makefile                 # Development commands
├── pyproject.toml           # Project configuration
├── uv.lock                  # Dependency lock file
└── README.md
```
