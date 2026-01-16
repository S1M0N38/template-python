.DEFAULT_GOAL := help
.PHONY: help install lint format typecheck quality test all

# Colors (ANSI)
YELLOW := \033[33m
GREEN  := \033[32m
BLUE   := \033[34m
RED    := \033[31m
RESET  := \033[0m

# Print helper
PRINT = printf "%b\n"

help: ## Show this help message
	@$(PRINT) "$(BLUE)python-template Makefile$(RESET)"
	@$(PRINT) ""
	@$(PRINT) "$(YELLOW)Available targets:$(RESET)"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "help"      "Show this help message"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "install"   "Install all dependencies"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "lint"      "Run linters"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "format"    "Run formatters"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "typecheck" "Run typecheckers"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "quality"   "Run code quality checks"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "test"      "Run tests"
	@printf "  $(GREEN)%-18s$(RESET) %s\n" "all"       "Run code quality checks and tests"

install: ## Install python_template and all dependencies
	@$(PRINT) "$(YELLOW)Installing all dependencies...$(RESET)"
	@uv sync --group dev --group test

lint: ## Run linters
	@$(PRINT) "$(YELLOW)Running Python linter...$(RESET)"
	@uv run ruff check --fix --select I .
	@uv run ruff check --fix .

format: ## Run formatters
	@$(PRINT) "$(YELLOW)Running Python formatter...$(RESET)"
	@uv run ruff check --select I --fix .
	@uv run ruff format .
	@$(PRINT) "$(YELLOW)Running Markdown formatter...$(RESET)"
	@uv run mdformat README.md
	@$(PRINT) "$(YELLOW)Running YAML formatter...$(RESET)"
	@uv run yamlfmt .
	@$(PRINT) "$(YELLOW)Running TOML formatter...$(RESET)"
	@uv run pyproject-fmt -n pyproject.toml

typecheck: ## Run typecheckers
	@$(PRINT) "$(YELLOW)Running Python typechecker...$(RESET)"
	@ty check

quality: lint typecheck format ## Run code quality checks
	@$(PRINT) "$(GREEN)✓ All checks completed$(RESET)"

test: ## Run tests
	@$(PRINT) "$(YELLOW)Running Python tests...$(RESET)"
	@uv run pytest

all: lint format typecheck test ## Run code quality checks and tests
	@$(PRINT) "$(GREEN)✓ All checks completed$(RESET)"
