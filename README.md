# Scalix World — Homebrew Tap

Official Homebrew formulas for [**Scalix Cloud**](https://scalix.world) — manage PostgreSQL databases (ScalixNova), serverless functions, containers (Scalix Run), persistent Linux Computers, object storage, and AI inference with one API key.

## Install

```bash
brew install scalixworld/tap/scalix-cloud
scalix-cloud login       # API key from https://console.scalix.world
```

| Formula | Package | Binary Releases |
|---|---|---|
| `scalix-cloud` | Scalix Cloud CLI (macOS Apple Silicon/Intel & Linux) | [`scalixworld/scalix-cloud-cli`](https://github.com/scalixworld/scalix-cloud-cli/releases) |

Also available via npm (`npm install -g scalix-cloud`) and Scoop (Windows). See [CLI Docs](https://docs.scalix.world/cli).

*(Not to be confused with [`scalix`](https://www.npmjs.com/package/scalix) on npm, which is Scalix Coder, the AI coding agent.)*

---

Scalix Cloud and `scalix-cloud` are proprietary software owned by **Scalix World Pvt Ltd** (India) and licensed internationally via **Energy FW Ltd** (UK). Core source code lives in the private platform monorepo; this tap distributes install manifests pointing to prebuilt releases (`BUSL-1.1`).

© 2026 Scalix World Pvt Ltd · [Terms](https://scalix.world/terms) · [Security](https://scalix.world/security)
