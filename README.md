# Gemini CLI in Containers (Docker or Podman)

Run **Google Gemini CLI** (`@google/gemini-cli`) with **Docker** or **Podman** — simple, secure, full file access.

Works on Ubuntu, Fedora, Arch, macOS, WSL. Use an API key (recommended in containers to avoid browser auth issues).

---

## Why Run Gemini CLI Inside a Container?

| Benefit | Explanation |
|--------|-------------|
| **Zero Global Install** | No `npm install -g` → no Node.js version conflicts, no root/sudo needed. |
| **Clean & Reproducible** | Same environment everywhere (dev, CI, server). Delete container = clean slate. |
| **Security & Isolation** | API key & history stay inside container. No accidental leaks to host. |
| **Rootless (Podman)** | Run without `sudo` on Fedora/RHEL — safer than global Docker. |
| **File Access with `@`** | Mount current directory → use `@file.txt`, `@code.py`, `@GEMINI.md` seamlessly. |
| **Easy Updates** | Rebuild image or pull latest → always fresh CLI without touching host. |
| **Works Without Browser** | Container can't open browser → forces API key (more reliable). |

> **TL;DR**: Container = sandboxed, portable, secure, file-aware AI assistant.

---
