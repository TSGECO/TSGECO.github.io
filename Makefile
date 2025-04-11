.PHONY: help
.DEFAULT_GOAL := help

# Extract target names and their comments from the Makefile
# Format: target: ## help text
help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# Build the project
serve: ## Build the project
	@echo "Building the project..."
	@mkdocs serve

# Clean build artifacts
clean: ## Clean build artifacts
	@echo "Cleaning build artifacts..."
	# Add your clean commands here

# Santize the project
sanitize: ## Sanitize the project
	@echo "Sanitizing the project..."
	@pre-commit autoupdate
	@pre-commit run --all-files
	
