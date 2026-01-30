# Pre-requisities
1. install nodejs locally
2. `cd <to-the-cloned-repo>` and ensure the followings:

    2.1 in the repo folder, create `.env` file and and define model mapping like this
```python
# Copilot API Environment Configuration
# Copy this file to .env and modify as needed

# Trace folder for logging LLM requests and responses
# Used when --trace flag is enabled
# Default: ./traces (current working directory)
TRACE_OUTPUT_FOLDER=./traces

# Idle timeout in seconds for the Bun server
# Default: 255 seconds
IDLE_TIMEOUT=255

# Model mappings to redirect requests from one model to another
# Format: "source1:target1,source2:target2"
# Example: "claude-sonnet-4-20250514:claude-opus-4,gpt-4:gpt-4-turbo"
MODEL_MAPPINGS="claude-sonnet-4-5-20250929:claude-sonnet-4.5,claude-opus-4-5-20251101:claude-opus-4.5,claude-haiku-4-5-20251001:claude-haiku-4.5"
```
    2.2 in the repo folder, confirm the `package.json` has this key and the value
```python
{
    "scripts":
    {
        "dev": "bun run --watch ./src/main.ts start --trace"
    }
}
```
3. To ensure that you can run `calude` in any terminal, do the followings:
    * For Mac/Linux: `cd ~/.claude`
    * For Windows: `cd C:\Users\<your user name>\.claude`
    * Then, create a `settings.json` in the folder with the following content
```json
          {
      "env": {
        "ANTHROPIC_BASE_URL": "http://localhost:4141",
        "ANTHROPIC_AUTH_TOKEN": "dummy",
        "ANTHROPIC_MODEL": "claude-sonnet-4.5",
        "ANTHROPIC_DEFAULT_SONNET_MODEL": "claude-sonnet-4.5",
        "ANTHROPIC_SMALL_FAST_MODEL": "claude-haiku-4.5",
        "ANTHROPIC_DEFAULT_HAIKU_MODEL": "claude-haiku-4.5",
        "DISABLE_NON_ESSENTIAL_MODEL_CALLS": "1",
        "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1"
      },
      "permissions": {
        "deny": [
        ]
      }
}
```

# Option 1: Run from npm
1. Run `npx copilot-api@latest start`
2. It will start the proxy via `http://localhost:4141` by default
3. Then run `claude` in any terminal

# Option 2: Run from local code
1. git clone this project to local: `git clone https://github.com/Exlsunshine/copilot-api.git`
2. install bun locally
3. install dependencies: `cd <to-the-cloned-repo> & bun install`
4. start the proxy: `cd <to-the-cloned-repo> & bun run dev`
5. start `claude cli` in any terminals:
  * For Mac/Linux: run `claude`
  * For Windows: run `calude` or `cd <to-the-cloned-repo> & start-claude.cmd`
