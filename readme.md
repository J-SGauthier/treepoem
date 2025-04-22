![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Shell: Bash](https://img.shields.io/badge/Shell-Bash-blue.svg)

# 🌲 treepoem

`treepoem` is a poetic shell tool for exploring directory structures with care. It maps your filesystem like a tree and gently reveals the first lines of `.txt` files when invited.

---



## ✨ Features

- 📁 Dry-run by default — shows structure only
- 📖 `--read` mode displays up to 10 lines from `.txt` files
- 🛡️ Auto-stops after 100 files to prevent runaway scans
- 🌳 Tree-style formatting with nested indentation
- 🧠 Read-only — nothing is touched or modified

---

## 💻 Installation

You can install `treepoem` by downloading the script and sourcing it in your shell.

### Option 1: Download script

```bash
curl -O https://raw.githubusercontent.com/J-SGauthier/treepoem/main/treepoem.sh
chmod +x treepoem.sh
```

---

### 🛠️ Troubleshooting: curl errors

If you see an error like:

```bash
curl: (60) SSL certificate problem: unable to get local issuer certificate
```
This usually means your system's **trusted certificates are outdated** — it's a safety feature, not a failure.

#### ✅ Try one of the following:

1. **Make sure your system is up to date**  
   (especially the certificate store / OpenSSL / curl package)

2. **If you're on Windows**, try using **[Git Bash](https://git-scm.com/downloads)** instead of PowerShell  
   Git Bash includes curl with correct certificate support.

3. **As a last resort**, you can skip certificate checks with:
   ```bash
   curl -k -O https://raw.githubusercontent.com/J-SGauthier/treepoem/main/treepoem.sh

## 🌱 Created by

[JS Gauthier](https://github.com/J-SGauthier)  
Fransaskois artist, sculptor, coder of poetic tools

---

## 🤖 Created in collaboration with ChatGPT

This tool was developed with assistance from [ChatGPT](https://openai.com/chatgpt), an AI language model by OpenAI, to help create, refine, and share the `treepoem` project.

---
