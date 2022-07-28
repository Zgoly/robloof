import glob
import os
from os import path
import shutil
from configparser import RawConfigParser

config = RawConfigParser()
config.read('config.ini')

BackupFolder = config.get('robloof', 'BackupFolder')
SoundsFolder = config.get('robloof', 'SoundsFolder')
RobloxVersionsFolder = path.expandvars(config.get('robloof', 'RobloxVersionsFolder'))
RobloxSoundsFolder = config.get('robloof', 'RobloxSoundsFolder')

Folder = glob.glob(RobloxVersionsFolder + '/**/' + RobloxSoundsFolder, recursive = True)

if not os.path.exists(BackupFolder) and BackupFolder != 'false':
    shutil.copytree(Folder[0], BackupFolder)

for folder in Folder:
    shutil.copytree(SoundsFolder, folder, dirs_exist_ok=True)
##spawn 