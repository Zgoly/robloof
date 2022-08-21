<div align="center">
  <h1>RoblOOF - return roblox "oof" sound</h1>
  <p>This program will allow you to return old character death sound in Roblox.</p>
  <img src="https://mystickermania.com/cdn/stickers/games/sticker_3326-256x256.png" alt="Oof image" width="200">
  <br>
  <img src="https://raw.githubusercontent.com/Zgoly/robloof/main/icon.ico" alt="Program icon" width="64">
  <br><br>
  <img alt="GitHub Windows only" src="https://shields.io/badge/-Windows%20only-important">
  <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/zgoly/robloof">
  <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/zgoly/robloof?style=flat">
  <img alt="GitHub issues" src="https://img.shields.io/github/issues/zgoly/robloof?style=flat">
</div>

## How it works
When roblox closes, roblox sounds replaced with yours custom. Also this creates a copy of sounds in case you want to return your old ones back.
## FAQ
> Can I be banned for this?

No. Roblox does not ban players for modifying local files, if they did I would warn you.

If you don't believe, read [this](https://devforum.roblox.com/t/1333413).
<br><br>
> Can I get old sounds back?

Yes. Read [this](#how-to-use).
<br><br>
> Is there virus code here?

No. You can see for yourself by looking at source code of the project.
<br><br>
> I ran `robloof.exe` but nothing happened!

Actually happened. Check your tray (icons at the bottom right of the screen).

## Setup
1. Download [AutoHotKey](https://www.autohotkey.com/download/ahk-install.exe), run it and follow instructions.
2. Download [project zip](https://github.com/Zgoly/robloof/archive/refs/heads/main.zip).
3. Unzip zip to any place, for example, to your desktop.

## How to use
Just run `RoblOOF.ahk` and program will run and create [`config.ini`](#about-configini); Now, after each closing of Roblox, program will change your sounds to new ones.
- To bring back roblox sounds, find RoblOOF in the tray, right-click on it and select "Return Sounds".
- To close RoblOOF, find it in the tray, right-click on it and select "Exit".
- To run RoblOOF when Windows starts, right-click on it and select "Run On Startup".
- To don't run RoblOOF when Windows starts, right-click on it and select "Don't Run On Startup".

## About `config.ini`
In `config.ini` you can configure some settings:
- `roblox_name` - the name by which the application will identify roblox. Default - `Roblox`.
- `sound` - sound that will play when sounds change successfully. Default - `\*64`.
  - You can change this sound to...
    - `0` - Don't play a sound
    - `\*-1` - Simple beep. If the sound card is not available, the sound is generated using the speaker.
    - `\*16` - Hand (stop/error)
    - `\*32` - Question
    - `\*48` - Exclamation
    - `\*64` - Asterisk (info)
  - Also, you can change it to custom sound. All you need to do is specify the path to the sound. Example:
    - *Drop sound `wow.mp3` into folder with program*
    - Instead of default `\*64`, specify value `wow.mp3`
- `backup_folder` - folder in which backup of roblox sounds will be stored. Default - `backup`. If you don't want to create a backup, set the value to `0`.
- `sounds_folder` - folder, where the sounds you want to change to are stored. Default - `sounds`.
- `roblox_versions_folder` - path to folder with roblox versions. Default - `(Your local AppData folder)\Roblox\Versions`.
- `roblox_sounds_folder` - path to folder with roblox sounds `Default - content\sounds`.

## Additional info
- Language used to write the program - [AutoHotKey](https://www.autohotkey.com/).
- Program where I made icon for the program - [Inkscape](https://inkscape.org/). *I made this icon in about 30 seconds lol*
