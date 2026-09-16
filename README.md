# ZapZap Windows Installer (Native Inno Setup Pack)

This repository contains the official configuration files to compile a native, traditional Windows 64-bit installer for **ZapZap**, the multi-account WhatsApp desktop client.

## Why this installer?
The official Windows build distributes ZapZap as a standalone portable package that extracts itself into `%localappdata%`. This causes indexation and shortcut issues in certain editions like **Windows 10/11 LTSC/Enterprise**, where the app shortcut is completely ignored by the Start Menu.

This project modifies the PyInstaller workflow from `--onefile` to `--onedir` and packages the full binaries using **Inno Setup**, achieving:
- Clean registration under `C:\Program Files\ZapZap`.
- Native Start Menu, Desktop, and Control Panel icon integration (fixes the blank/missing icon issue).
- Automatic application closure when upgrading.
- Multi-language installer support (English, Spanish, and Portuguese).

---

## 🛠️ How to Verify and Build It Yourself (DIY)

If you want to audit the code, modify it, or compile the `.exe` installer by yourself, follow these steps:

1. **Prerequisites:** Download and install the latest version of [Inno Setup](https://jrsoftware.org).
2. **Setup the Source:** Download and extract the official ZapZap source code from the main repository (`zapzap-main.zip`).
3. **Replace the Builder Script:** Take the modified `build.ps1` file from this repository and replace the original one located at:
   `zapzap-main\.github\packaging\windows\build.ps1`
4. **Prepare the Assets:** Place both the `zapzap_instalador.iss` script and the `zapzap.ico` file from this repository directly into the root directory of the project (`zapzap-main\`).
5. **Run PyInstaller:** Open PowerShell inside `zapzap-main\`, install dependencies (`pip install pyinstaller -r requirements.txt`), and run the builder script:
   `.github/packaging/windows/build.ps1`
6. **Compile the Installer:** Open `zapzap_instalador.iss` using Inno Setup Compiler and press **F9**. Your freshly generated installer will be waiting for you inside the `Output\` folder!

---

## Credits
- **Original App Developer:** [[Rafatosta (ZapZap)](https://github.com)](https://github.com/rafatosta)
- **Windows Packaging & Installer:** RAMS Software (DjNaufrago)
