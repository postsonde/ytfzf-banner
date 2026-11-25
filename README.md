# ⚡ YTFZF PASTEL BANNER

### 🌸 HORIZONTALLY CENTERED PINK-RED PASTEL ASCII LAUNCHER FOR `ytfzf`.

![ytfzf Pastel Banner Preview](screenshot_ytfzf.png)

- **The Signal:** No bloated browser tabs. Pure terminal YouTube browsing wrapped in custom pastel ANSI art. 🤖
- **The Layout:** Dynamically calculates terminal width (`tput cols`) to center the 74-column ASCII banner on any screen size.
- **The Launch:** Fires up `ytfzf` in full-height reverse `fzf` layout with thumbnails enabled (`-t`) after a 1.2s boot splash. ⚡

## 🖥️ Command & Alias

| Alias | Executes | Description |
| :--- | :--- | :--- |
| **`yt`** | `FZF_DEFAULT_OPTS="--height=100% --layout=reverse" command ytfzf --pages=3 -t` | Clears terminal, renders centered pink-red pastel banner & launches `ytfzf` |

## 🚀 Quick Install

### One-Liner (via `curl`)
```bash
curl -fsSL https://github.com/postsonde/ytfzf-banner/install_ytfzf_banner.sh | bash && source ~/.bashrc
```

### Manual Install
```bash
git clone https://github.com/postsonde/ytfzf-banner/install_ytfzf_banner.sh
cd ytfzf-banner
chmod +x install_ytfzf_banner.sh
./install_ytfzf_banner.sh
source ~/.bashrc
```

Run it with:
```bash
yt
```

## ⚙️ Requirements

- `bash` (Debian / Linux)
- [`ytfzf`](https://github.com) + `fzf` + `mpv` / `yt-dlp`

---
*Built on Linux by [@postsonde](https://github.com/postsonde) — Trust the code, not the pixels.* 🧛‍♂️
