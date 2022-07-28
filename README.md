# RoblOOF - return roblox "oof" sound
This program will allow you to return old character death sound in Roblox.

## How it works
When you start the program, it replaces usual roblox sounds with yours custom. Also this creates a copy of sounds in case you want to return your old ones back.
## FAQ
> Can I be banned for this?

No. Roblox is not banning players for changing local files, they just don't need it.

> Can I get old sounds back?

Of course. See below for a tutorial.

> Is there virus code here?

No. You can see for yourself by looking at source code of the project. If you are still afraid to run files from here, you can compile by yourself, see "Compile" section.

> I ran `robloof.exe` but nothing happened!

So it should be. In order not to use extra computer resources, the program starts in "quiet" mode. Once launched, re-enter Roblox. If nothing changes, then you placed file in wrong place.

## Setup
1. Click **[here](https://github.com/zgoly/robloof/releases/latest/download/robloof.exe)** to download latest `robloof.exe` release.
2. Click **[here](https://github.com/Zgoly/robloof/archive/refs/heads/main.zip)** to download project zip.
3. Open zip and move folder `robloof-main` to any place, for example, to your desktop.
4. Move downloaded `robloof.exe` file in folder mentioned above.

If you did everything correctly, then you will get the following file structure:

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

## Compile
1. Run `build.bat` file.
2. After compiling you can find `robloff.exe` file in the `dist` folder.
