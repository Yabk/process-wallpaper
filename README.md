# process-wallpaper

Python and shell script which set the wallpaper to a wordcloud of the most resource-intensive processes currently running.
Works only on sway!

## Setup
* Clone the repo: `git clone https://github.com/Yabk/process-wallpaper`
* cd into the repo directory: cd process-wallpaper
* Set the resolution of your display in `config.json`
* Create a virtualenv directory named `venv` inside the project directory: `virtualenv venv`
* Install the requirements inisde the venv: `venv/bin/pip install -r requirements.txt`

## Use
### Cron
The wallpaper is updated every time `updateWallpaper.sh` is run. To trigger the update every 15 minutes, append the following line to `crontab -e`:
```
*/15 * * * * /usr/bin/bash /path/to/script/directory/updateWallpaper.sh

```
### Systemd
Example systemd units can be found in the `systemd-example` directory
