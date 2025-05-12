# PwshUtils.WinRun

A PowerShell utility module providing quick access to common **Windows Run dialog** commands.  
Useful for quick reference, training, automation, or everyday efficiency.

---

## 📦 Module Overview

This module provides a single cmdlet:

- `Get-UtilWinRunCommands`: Returns a list of useful commands that can be executed from the **Windows Run (`Win + R`)** dialog. Examples include `cmd`, `regedit`, `msconfig`, and more.

---

## 🚀 Usage

### 1. Import the module

If you cloned the repository into your `$env:PSModulePath`:

```powershell
Import-Module PwshUtils.WinRun
```

### 2. View the command list

```powershell
Get-UtilWinRunCommands | Format-Table
```

#### Example output:

| Name       | Description                      |
|------------|----------------------------------|
| `cmd`      | Opens Command Prompt             |
| `regedit`  | Opens the Registry Editor        |
| `msconfig` | Opens System Configuration Tool  |

---

## 📁 Files Included

- `WindowsRun.csv`: The raw list of commands (fetched from Gist or loaded from cache)
- `PwshUtils.WinRun.psm1`: PowerShell module script
- `PwshUtils.WinRun.psd1`: Module manifest
- `README.md`: This documentation

---

## 🔧 Features

- ✅ Automatically downloads the CSV from your Gist (and caches it)
- ✅ Works offline after the first successful fetch
- ✅ Clean and fast: ideal for automation and minimal setups

---

## 📌 Requirements

- PowerShell 5.1 or later
- Windows OS
- Internet connection (optional after initial download)

---

## 💡 Why I Built This

I regularly use and collect useful **Windows Run** commands, but wanted a clean and consistent way to access them from PowerShell across machines. This module makes that possible.

---

## 📜 License

MIT License — free to use, modify, and share 😎.
