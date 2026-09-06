# dashboard-startup-script
A startup script for the Tribotech Dashboard PC to open and run the relevant programs

## Script purpose
The `startup.bat` script:
1. Starts the Python dashboard backend (main.py)
2. Opens Delta eServer and relevant configuration
3. Launches Chrome in full-screen mode for Screen 1 (http://192.168.1.28:8050/screen1)
4. Launches Chrome in full-screen mode for Screen 2 (http://192.168.1.28:8050/screen2)

## How to start script on windows start
I am suggesting the use of task scheduler rather than startup folder to allow for running with privileges.
1. Open the windows run menu and run taskschd.msc
2. Create a basic task
3. Name it something relevant such as "Dashboard Startup"
4. Set the trigger to "When the computer starts"
5. Add the startup.bat and its full path to the Action
6. Enable "Run with highest privileges"
7. Click finish