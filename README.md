# auto-update-firefox-developer
## Introduction 
A bash script to automatically extract and update Firefox Developer Edition on Linux.

## Getting Started
It is presumed Firefox Developer edition is stored at /opt/firefox developer, and this specific path requires `sudo` privileges. If you store Firefox Developer Edition somewhere else, change the variable `fde_path` in `update.sh` to your destination folder.  

Download and extract this repo onto your system, then open a new terminal and `cd` into it. 

Make the `update.sh` file executable:

`sudo chmod +x ./update.sh`

Finally, execute the update:

`sudo ./update.sh`

This update script can be executed as a startup command in many linux distros. Again, you may need to ensure the user has write privilieges on the destination path before setting up automatic execution. 
