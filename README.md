# 💤 Ma configuration Neovim basée sur LazyVim

Ceci est ma configuration personnelle de [Neovim](https://neovim.io) construite sur [LazyVim](https://lazyvim.github.io/).  
Elle fournit une base moderne et rapide avec un gestionnaire de plugins efficace et une organisation claire.

---

## 🚀 Installation

### 1. Prérequit

- [Neovim](https://neovim.io/) **≥ 0.9**
- [Git](https://git-scm.com/)

---

### 2. Cloner la configuration

#### Linux / macOS

Sur le terminal :

```bash
git clone https://github.com/Foufi15/nvim.git ~/.config/nvim
```
           

#### Window
Sur le terminal :

```powershell
git clone https://github.com/Foufi15/nvim.git $env:LOCALAPPDATA\nvim
```

### 3. Premier lancement

Lance simplement Neovim

```bash
nvim
```
Lazyvim installera automatiquement les plugins nécessaires au demarage.

---

### Structure

```
~/.config/nvim
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
```