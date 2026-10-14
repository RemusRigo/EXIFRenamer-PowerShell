# EXIF Renamer: User's Guide



## Requirements

* Windows 10/11 with **Windows PowerShell 5.1** (included in Windows)
* [ExifTool](https://exiftool.org) (Windows executable): rename `exiftool(-k).exe` to `exiftool.exe`



## Install

1. Download the latest release from the [Releases page](https://github.com/RemusRigo/EXIFRenamer-PowerShell/releases).
2. Copy the `EXIF Renamer` folder to a location where you have write access, for example `D:\My Apps\EXIF Renamer\`.
3. Start it, either way:
   * double-click `EXIF Renamer.bat`, or
   * right-click `EXIF Renamer.ps1` → **Run with PowerShell**.
4. The first time, if `exiftool.exe` is not found, choose the folder that contains it.
   The path is saved in `exiftool.txt` next to the script, so you are asked only once.

> If Windows blocks the script, right-click it → **Properties** → check **Unblock** → **OK**.



## Usage

1. Add photos, either way:
   * drag-and-drop RAW files on the list (other file types are ignored), or
   * click **Load files** and choose a folder: all the RAW files in it are added.
2. Click **Process Data**. The **New File Name** column shows the new names:

   ```
   <yyyy.MM.dd> <HH.mm.ss> <shutter count>.<ext>     e.g. 2025.07.26 18.03.22 50000.arw
   ```

   The date and time come from the photo's `DateTimeOriginal`; the shutter count is added when the camera saves it.
   Files without EXIF date are unchecked and shown in red.
3. Check the list, then click **Rename**. Only the checked files are renamed.
4. Click **Clear** to empty the list.

|Column|Description|
|-|-|
|**Path**|The folder of the photo|
|**Original File Name**|The current name|
|**New File Name**|The name after **Rename**|

Supported files: `.3fr .arw .cr2 .crw .dng .erf .kdk .mef .mos .mrw .nef .orf .pef .raf .raw .rw2 .srw .x3f`.



## Fix wrong dates: Update Date in filename.ps1

If your camera clock was wrong, this script shifts the date in file names that EXIF Renamer created.

1. Open `Update Date in filename.ps1` in a text editor and set:

   |Variable|Description|
   |-|-|
   |`$Folder`|The folder with the renamed photos|
   |`$YearOffset`, `$MonthOffset`, `$DayOffset`|How many years, months and days to add (use negative numbers to subtract)|

2. Right-click the script → **Run with PowerShell**. Each file is renamed, e.g. `2010.01.01 18.03.22 50000.arw` → `2026.05.20 18.03.22 50000.arw`.

> Make a copy of your photos first: the files are renamed without asking.



## Uninstall

Delete the `EXIF Renamer` folder.
