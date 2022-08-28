; Change icon
Menu, Tray, NoStandard
Menu, Tray, Icon, icon.ico
Menu, Tray, Add, Replace Sounds, replaceSounds
Menu, Tray, Add, Return Sounds, returnSounds
Menu, Tray, Add
Menu, Tray, Add, Run On Startup, ROS
Menu, Tray, Add, Don't Run On Startup, DROS
Menu, Tray, Add
Menu, Tray, Add, Exit, exitApp

; Create global variables
global appName
appName = RoblOOF
global configName
configName = config.ini

; Create config.ini
If !FileExist(configName)
{
    IniWrite, Roblox, %configName%, %appName%, roblox_name
    IniWrite, *64, %configName%, %appName%, sound
    IniWrite, backup, %configName%, %appName%, backup_folder
    IniWrite, sounds, %configName%, %appName%, sounds_folder
    IniWrite, %LOCALAPPDATA%\Roblox\Versions, %configName%, %appName%, roblox_versions_folder
    IniWrite, content\sounds, %configName%, %appName%, roblox_sounds_folder
}

getVersions() {
    ; Create array of available Roblox versions
    Array := Array()
    IniRead, roblox_versions_folder, %configName%, %appName%, roblox_versions_folder
    Loop Files, % roblox_versions_folder "\*", D
    {
        Array.Push(A_LoopFileName)
    }
    Return Array
}

replaceSounds(Wait) {
    ; Continue execution only when Roblox closes
    if (Wait == 1) {
        IniRead, roblox_name, %configName%, %appName%, roblox_name
        WinWait, %roblox_name%
        WinWaitClose
    }

    Array := getVersions()

    ; Backup sounds if needed
    IniRead, backup_folder, %configName%, %appName%, backup_folder
    IniRead, roblox_sounds_folder, %configName%, %appName%, roblox_sounds_folder
    IniRead, roblox_versions_folder, %configName%, %appName%, roblox_versions_folder
    If (!InStr(FileExist(%backup_folder%), "D")) and (%backup_folder% != "0")
    {
        FileCopyDir, % roblox_versions_folder "\" Array[1] "\" roblox_sounds_folder, %backup_folder%
    }

    ; Replace sounds in all sound folders of Roblox
    IniRead, sounds_folder, %configName%, %appName%, sounds_folder
    for i, v in Array
    {
        FileCopyDir, % sounds_folder, % roblox_versions_folder "\" v "\" roblox_sounds_folder, 1
    }

    ; Play sound
    IniRead, sound, %configName%, %appName%, sound
    SoundPlay, %sound%

    ; Run this function again
    ReplaceSounds(1)
}
replaceSounds(1)

returnSounds() {
    Array := getVersions()

    ; Bring back sounds
    IniRead, backup_folder, %configName%, %appName%, backup_folder
    If (FileExist(A_WorkingDir "\" backup_folder))
    {
        IniRead, roblox_versions_folder, %configName%, %appName%, roblox_versions_folder
        IniRead, roblox_sounds_folder, %configName%, %appName%, roblox_sounds_folder
        for i, v in Array
        {
            FileCopyDir, % backup_folder, % roblox_versions_folder "\" v "\" roblox_sounds_folder, 1
        }
        FileRemoveDir, %backup_folder%, 1
    }

    ; Play sound
    IniRead, sound, %configName%, %appName%, sound
    SoundPlay, %sound% 
}


ROS() {
    FileCreateShortcut, %A_ScriptName%, %A_Startup%\%appName%.lnk
}

DROS() {
    FileDelete, %A_Startup%\%appName%.lnk
}

exitApp() {
    ExitApp
}
