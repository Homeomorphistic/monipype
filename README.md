# monipype

## Running the project

monipype requires Python 3.14 or later. Run it from the project root with uv:

```bash
uv run monipype
```

## Development setup

Project commands are run with `uv run`. Install the Git hooks after cloning the
repository:

```bash
uv run pre-commit install
```

The hooks validate commit messages, lint and format code before commits, and run
type checks and tests before pushes.

## Committing changes

This project uses [Conventional Commits](https://www.conventionalcommits.org/).
Write a compliant commit message yourself, or optionally use Commitizen's
interactive prompt if `cz` is installed on your machine:

```bash
cz commit
```

Commitizen is a convenience, not a required project dependency.
