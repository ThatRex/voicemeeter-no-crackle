# Voicemeeter No Crackle

Note: [This is considered a "last effort" fix. Its recommended to try other fixes first.](https://www.reddit.com/r/VoiceMeeter/comments/r5322w/comment/hmkrt0n)

The script creates a scheduled task that executes a PowerShell script on user login. That script checks every 5 seconds if the audiodg process is running and sets its processor affinity to `CPU 0` and priority to `High`.

Tested on windows 10 and 11. While the script works I noticed no improvements when using it.

# Usage

Past this into your terminal:

```powershell
$env:script = "voicemeeter-no-crackle"; irm "http://win.scripts.rexslab.com/" | iex
```

# Changelog

## [V1.2] - 03-04-2023

-   Changed: Script location changed from C drive root to ProgramData\voicemeeter-no-crackle

## [V1.1] - 02-04-2023

-   Removed: Task startup delay
-   Changed: Powershell script now checks every 5 seconds if audiodg is running
-   Changed: Powershell script now sets priority to High instead of Real Time
-   Added: Starts task when added; Stops task when removed

## [V1.0] - 01-04-2023

-   First Version
