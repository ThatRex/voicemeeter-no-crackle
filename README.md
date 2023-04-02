# Voicemeeter No Crackle

Note: [This is considered a "last effort" fix. Its recommended to try other fixes first.](https://www.reddit.com/r/VoiceMeeter/comments/r5322w/comment/hmkrt0n)

[Download](https://github.com/ThatRex/voicemeeter-no-crackle/releases/download/Latest/voicemeeter-no-crackle.bat) and run `voicemeeter-no-crackle.bat` to add or remove the fix.

Tested on windows 10 and 11.

## How It Works

The script creates a scheduled task that executes a PowerShell script on user login. That script checks every 5 seconds if the audiodg process is running and sets its processor affinity to `CPU 0` and priority to `High`.

# Changelog

## [V1.1] - 02-04-2023

-   Removed: Task startup delay
-   Changed: Powershell script now checks every 5 seconds if audiodg is running
-   Changed: Powershell script now sets priority to High instead of Real Time
-   Added: Starts task when added; Stops task when removed

## [V1.0] - 01-04-2023

-   First Version
