<div align="center">
  <h1>RoblOOF - return roblox "oof" sound</h1>
  <p>This program will allow you to return old character death sound in Roblox.</p>
  <img src="https://mystickermania.com/cdn/stickers/games/sticker_3326-256x256.png" alt="Oof image" width="200">
  <br>
  <img src="https://raw.githubusercontent.com/Zgoly/robloof/main/icon.ico" alt="Program icon" width="64">
  <br><br>
  <img alt="GitHub all releases" src="https://img.shields.io/github/downloads/zgoly/robloof/total?logo=GitHub&style=flat">
  <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/zgoly/robloof">
  <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/zgoly/robloof?style=flat">
  <img alt="GitHub issues" src="https://img.shields.io/github/issues/zgoly/robloof?style=flat">
</div>

## How it works
When you start the program, it replaces usual roblox sounds with yours custom. Also this creates a copy of sounds in case you want to return your old ones back.
## FAQ
> Can I be banned for this?

No. Roblox is not banning players for changing local files, they just don't need it.
<br><br>
> Can I get old sounds back?

Of course. See **[Uninstall](#uninstall)** section.
<br><br>
> Is there virus code here?

No. You can see for yourself by looking at source code of the project. If you are still afraid to run files from here, you can compile by yourself, see **[Compile](#compile)** section.
<br><br>
> I ran `robloof.exe` but nothing happened!

So it should be. In order not to use extra computer resources, the program starts in "quiet" mode; Once launched, re-enter Roblox. If nothing changes, then you placed file in wrong place.

## Setup
1. Click **[here](https://github.com/zgoly/robloof/releases/latest/download/robloof.exe)** to download latest `robloof.exe` release.
2. Click **[here](https://github.com/Zgoly/robloof/archive/refs/heads/main.zip)** to download project zip.
3. Open zip and move folder `robloof-main` to any place, for example, to your desktop.
4. Move downloaded `robloof.exe` file in folder mentioned above.

If you did everything correctly, then you will get following file structure:

- sounds
- robloof.exe
- robloff.py
- README.md
- LICENSE
- icon.ico
- config.ini
- build.bat

Of these files, you can leave `sounds`, `robloof.exe` and `config.ini`, others can be removed.

## How to use
Just run `robloff.exe` file and program will do everything for you. You can also change some options in the `config.ini` file.
After each Roblox update, sounds return to old ones. To avoid this, you can set program to startup:

1. Create a shortcut for `robloff.exe`.
2. Press `Win` + `R`.
3. Paste into field following path: `%AppData%/Microsoft/Windows/Start Menu/Programs/Startup` and click on "OK".
4. Drag recently created shortcut to the folder that opens.

Done! Now program will run every time you turn on your computer. Don't worry, it won't make your computer lag.

## Uninstall
If you want to bring back your old sounds then you have 3 ways:

1. First way
    1. Remove all files from the `sounds` folder.
    2. Move all files from the `backup` folder to the `sounds` folder.
    3. Run `robloff.exe`.
2. Second way
    1. Reinstall Roblox
2. Third way
    1. Wait for Roblox update

If you want to uninstall this program then:

1. If you set program to startup, then repeat steps in the "How to use" section, but only on last step remove shortcut from the startup folder.
2. Delete folder you created in the "Setup" section.
3. Done!

## Compile
1. Run `build.bat` file.
2. After compiling you can find `robloff.exe` file in the `dist` folder.

## Additional info
- Language used to write the program - **[Python](https://www.python.org/)**.
- Program where I made icon for the program - **[Inkscape](https://inkscape.org/)**. *I made this icon in about 30 seconds lol*
