FROM python:3.14-slim

# Copy uv from its official image
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

# Install dependencies only (cached layer — only reruns when the lock file changes)
COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev --no-install-project

# Install the project itself
COPY README.md ./
COPY src/ ./src/
RUN uv sync --frozen --no-dev

CMD ["uv", "run", "--no-sync", "monipype"]
