# EXIF Renamer
EXIF Renamer: a PowerShell GUI script that renames RAW photos using their EXIF data



## Author

* [@remusrigo](https://github.com/RemusRigo)
* [@remusrigo](https://sourceforge.net/u/remusrigo/profile)



## Features

* Renames photos to `<date> <time> <shutter count>`, e.g. `2025.07.26 18.03.22 50000.arw`, read with [ExifTool](https://exiftool.org)
* Supported RAW files: 3fr, arw, cr2, crw, dng, erf, kdk, mef, mos, mrw, nef, orf, pef, raf, raw, rw2, srw, x3f
* Drag-and-drop files on the list, or load all the files from a folder
* Preview the new names before renaming
* Remembers where `exiftool.exe` is
* Extra script `Update Date in filename.ps1`: fixes the date in already renamed files (when the camera clock was wrong)



## User's Guide

See the [User's Guide](UsersGuide.md) for requirements, installation and usage.



## Statistics

![PowerShell](https://img.shields.io/badge/Language-PowerShell-blue)
![VSCode](https://img.shields.io/badge/IDE-VS%20Code-purple)
![CMD](https://img.shields.io/badge/CMD-exiftool-yellow)
<br>
![status](https://img.shields.io/badge/status-completed-brightgreen) 
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/RemusRigo/EXIFRenamer-PowerShell/total)



## Roadmap

* 2026-07-20: Add: new script (Update Date in filename.ps1) to modify the filename of an image
   (if the metadata is incorrect, you can rename the file by adding the missing years/months/days)
* 2025-07-26: Add: button (Clear) to clear all items from the ListView
* 2025-07-26: Add: button (Load files) and procedure to load files (3fr, arw, cr2, crw, dng, erf, kdk, orf, mef, mos, mrw, nef, orf, pef, raf, raw, rw2, srw, x3f)
* 2025-07-25: Add: check exiftool.exe path (if not found, browse for folder and save path to a text file)
* 2025-07-16: Add: filter multiple raw files
* 2025-07-16: Add: only defined file types can be dropped on the ListView
* 2025-07-16: Add: support for drag-and-drop
* 2025-05-13: Project started



## Resources

* [ExifTool](https://exiftool.org) by Phil Harvey
