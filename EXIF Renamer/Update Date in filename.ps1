#---------------------------------------------------------------------------------------------------------------------------
# Update date in filename
#    © 2026 Remus Rigo
#       v1.0.20260720
#---------------------------------------------------------------------------------------------------------------------------

# Format:           yyyy.MM.dd HH.mm.ss 000000.ext
# Current filename: 2010.01.01 18.03.22 50000
# Fixed filename:   2026.05.20 18.03.22 50000

$Folder = "D:\Path\To\Images"

$YearOffset  = 16
$MonthOffset = 4
$DayOffset   = 19

$files = Get-ChildItem -Path $Folder -File

foreach ($file in $files) {

   $name = $file.BaseName
   $ext  = $file.Extension

   # Split into parts, separator is space
   $parts = $name -split ' '

   if ($parts.Count -lt 3) {
      Write-Host "Skipping $name : cannot detect date/time/number"
      continue
   }

   $datePart   = $parts[0]   # Date:    2010.01.01
   $timePart   = $parts[1]   # Time:    18.03.22
   $numberPart = $parts[2]   # Shutter: 50000

   try {
      # Parse using your real format
      $dt = [datetime]::ParseExact("$datePart $timePart", "yyyy.MM.dd HH.mm.ss", $null)

      # Apply offsets
      $corrected = $dt.AddYears($YearOffset).AddMonths($MonthOffset).AddDays($DayOffset)

      # Build new filename in EXACT same format
      $newName = "{0} {1} {2}{3}" -f $corrected.ToString("yyyy.MM.dd"), $corrected.ToString("HH.mm.ss"), $numberPart, $ext

      # Phase 2: rename using the stable list
      Rename-Item -LiteralPath $file.FullName -NewName $newName

      Write-Host "$name → $newName"
   }
   catch {
      Write-Host "Skipping $name : $_"
   }
}