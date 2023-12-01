# auto-update-firefox-developer-edition
A bash script to automatically update Firefox Developer Edition on Linux.

## Getting Started
It is presumed Firefox Developer edition is stored at `/opt/firefox-developer`. Therefore, `update.sh` will need to be given write priviliges in order to successfully execute. If you store Firefox Developer Edition somewhere else, `sudo` privileges may not be necessary. Yet you will need to change value of the variable `fde_path` to the proper location before executing `update.sh`.  

1. Download and extract this repository, then open a new terminal and `cd` into it. 

2. Make `update.sh` executable:

    `sudo chmod +x ./update.sh`

3. Execute `update.sh`:

    `sudo ./update.sh`

## Automatically Update on Startup
Many linux distros allow you to execute custom bash scripts on startup. However, `update.sh` may fail in this case if write privileges are not provided to the startup user, as mentioned before in [Getting Started](#getting-started).

To solve this, I reccomend changing the directory's group ownership to `sudo` (which should include your user), and then give this group write privileges on the directory: 

1. Change group ownership to `sudo`:

    `sudo chown -R :sudo /opt/firefox-developer`

2. Give this group write privileges:

    `sudo chmod -R g+w /opt/firefox-developer`

Again, change `/opt/firefox-developer` to the actual directory path if you store Firefox Developer Edition somewhere else.


