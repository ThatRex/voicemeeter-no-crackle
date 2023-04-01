# Voicemeeter No Crackle

Tested On: Windows 10

The `audiodg-fix.ps1` script sets priority to "Realtime" and affinity to "CPU 0" for the `audiodg.exe` process. This should mitigate the voicemeeter crackle problem.

To run the script on startup run `startup-add-remove.bat`.