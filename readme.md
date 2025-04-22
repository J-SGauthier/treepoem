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

To get started with `treepoem`, follow these simple steps:

---

#### Option 1: **One-click Install**

For an easy, automated installation, run the following command in your terminal:

```bash
curl -s https://raw.githubusercontent.com/J-SGauthier/treepoem/main/install.sh | bash
```

This will:
- Download and install `treepoem`
- Make it globally accessible
- Set everything up with minimal effort

#### Option 2: **Manual Installation** (if you prefer)

1. **Download `treepoem.sh`**:

   ```bash
   curl -O https://raw.githubusercontent.com/J-SGauthier/treepoem/main/treepoem.sh
   ```

2. **Make the script executable**:

   ```bash
   chmod +x treepoem.sh
   ```

3. **Run `treepoem.sh` from any folder**:

   ```bash
   ./treepoem.sh .
   ```

   Or, to make it easier to run from anywhere, follow the manual steps to place it in your `~/bin` directory.

---

### ⚠️ Troubleshooting: curl Errors

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
   ```
   ⚠️ *Only use `-k` if you fully trust the source and understand the risks.*

---

### 🔧 Uninstalling `treepoem`

If you ever need to remove `treepoem`:

#### **To uninstall**:

Run the following command to remove the script and clean up your environment:

```bash
curl -s https://raw.githubusercontent.com/J-SGauthier/treepoem/main/uninstall.sh | bash
```

This will:
- Remove the `treepoem` script from your system
- Clean up any changes made to your `~/.bashrc`

---

### 💡 Summary of Installation Options:
- **One-click install**: Best for most users, simple and quick.
- **Manual install**: For those who want more control.
- **Uninstall**: Easily remove `treepoem` whenever needed.

---

### 🎉 Conclusion:

With this, `treepoem` is now installed and ready to bring poetic tree explorations to your system! You can begin using it immediately by running `treepoem .` in your terminal.

---

## 📜 Notes:
- If you'd like further customization or run into issues, feel free to open an issue on the repository.

---

## 🤖 Created in collaboration with ChatGPT

This tool was developed with assistance from [ChatGPT](https://openai.com/chatgpt), an AI language model by OpenAI, to help create, refine, and share the `treepoem` project.

It was also inspired by the **[Code Societies SFPC class in 2025](https://sfpc.io/code-societies/)**, which focused on computational art, collaboration, and creative tools.

---

## 📄 License

MIT License — free to use, adapt, and share.

---

## 🌱 Created by

[JS Gauthier](https://github.com/J-SGauthier)  
Fransaskois artist, sculptor, coder of poetic tools
