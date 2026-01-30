@ECHO OFF

set ANTHROPIC_BASE_URL=http://localhost:4141
set ANTHROPIC_AUTH_TOKEN=dummy-key
set ANTHROPIC_DEFAULT_HAIKU_MODEL=claude-haiku-4.5
set ANTHROPIC_DEFAULT_OPUS_MODEL=claude-opus-4.5
set ANTHROPIC_DEFAULT_SONNET_MODEL=claude-sonnet-4.5
call claude

ECHO Exist claude...
