# Project commands

Use `uv run` for all Python commands and project tools. Do not invoke tools such
as Ruff, ty, or pytest directly.

Run the project from the repository root:

```bash
uv run monipype
```

# Project setup

Install the project's Git hooks after installing the development dependencies:

```bash
uv run pre-commit install
```

The command installs the commit-msg, pre-commit, and pre-push hooks defined in
`.pre-commit-config.yaml`. Commitizen validates commit messages.

# Validation

The pre-commit hook runs these commands in order:

```bash
uv run ruff check --fix
uv run ruff format
```

The pre-push hook runs these commands in order:

```bash
uv run ty check
uv run pytest
```

Run the applicable validation commands before completing changes. Code will be
checked with the same commands when committed and pushed.

# Commits

All agents must follow the Conventional Commits specification. Compose a
compliant commit message directly; do not rely on Commitizen being installed.
