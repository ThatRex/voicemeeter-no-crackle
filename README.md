# Voicemeeter No Crackle

Tested on windows 10 and 11.

The `audiodg-fix.ps1` script sets priority to "Realtime" and affinity to "CPU 0" for the `audiodg.exe` process. This should mitigate the voicemeeter crackle problem.

To add the fix to startup [download](https://github.com/ThatRex/voicemeeter-no-crackle/releases/download/V1.0/voicemeeter-no-crackle.bat) and run `voicemeeter-no-crackle.bat`.
