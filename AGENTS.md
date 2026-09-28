# AGENTS.md

monipype turns the expense data I collect on my phone into clean, structured
data I can budget from. For more, read README.md.

## Commands

Prefix every tool invocation with `uv run`. Never call `ruff`, `ty`, or `pytest`
directly.

Run the project with `uv run monipype`.

Install the hooks once in the main checkout with `uv run pre-commit install`.
Hooks are shared by every worktree, so this is not repeated per worktree.

The validation check list lives in `.pre-commit-config.yaml`. The hooks run it
on commit and on push. Do not bypass them with `--no-verify`; fix the cause and
commit again.

## Working agreement

- One issue per worktree.
- Never switch a checkout that another agent or a test run is using.
- Never force-push or delete `main`.
