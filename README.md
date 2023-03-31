# Voicemeeter No Crackle

This script sets priority to "Realtime" and affinity to "CPU 0" for the `audiodg.exe` service. This should mitigate the voicemeeter crackle problem.

# Running On Startup

Note: You will need admin privileges to do this.

1. Place the `audiodg-fix.ps1` file at the root for your C drive.
2. Open Task Scheduler.
3. In the Actions pane on the right, click "Create Task".
4. In the General tab, enter a name for the task and check "Run whether user is logged on or not" and "Run with highest privileges".
5. In the Triggers tab, click "New." From the "Begin the task" drop-down menu, select "At log on" and choose "Any user". Check the "Delay task for" box and select "30 seconds". (this gives times for the `audiodg.exe` service to start)
6. In the Actions tab, click "New" and select "Start a program". In the "Program/script" field, enter `powershell`. In the "Add arguments (optional)" field, enter `-Command  "start-process -verb runAs "powershell" -argumentlist 'C:\audiodg-fix.ps1'"`. Click "OK".
7. Click "OK" to save your task.
