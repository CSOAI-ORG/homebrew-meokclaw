# homebrew-meokclaw

Homebrew tap for **meokclaw** — the Sovereign AI TUI (Bubble Tea + a 33-node BFT council, right in your terminal).

## Install

```bash
brew tap CSOAI-ORG/meokclaw
brew install meokclaw
```

## Use

```bash
meokclaw                 # launch the TUI
meokclaw --version
meokclaw --verify-license
```

The **Free tier works out of the box**. Unlock Pro (cloud companion sync, voice council, multi-machine sync) at <https://meok.ai/sovereign-pro>, then:

```bash
export MEOKCLAW_API_KEY=mk_...
# …or save to ~/.config/meokclaw/auth as {"api_key": "mk_..."}
```

## Platforms

| OS | Arch | Supported |
|----|------|-----------|
| macOS | Apple Silicon (arm64) | ✅ |
| macOS | Intel (amd64) | ✅ |
| Linux | amd64 | ✅ |

---

© 2026 MEOK AI LTD (CSOAI) · MIT License · <https://meok.ai>
