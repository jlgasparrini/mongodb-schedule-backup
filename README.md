# mongodb-schedule-backup
Schedule backups during the night for mongodb

* Before run script create a dir:
```bash
mkdir ~/db_backups
```

* Using mongodump you have to set on the script:
  - host
  - db name
  - username
  - password

* Set Up cron to Run the Script Nightly
```bash
sudo crontab -e
```
In that file, underneath all the comments at the top, enter the following line:
```
45 1 * * * ../../scripts/db_backup.sh
```

So, in our entry above we’re telling cron to run our script at 1:45am every night.

* TODO
  - Remove directories that are 30 days old. If you don’t have a need to keep more than 30 days of backups, then simply remove old directories at the same time you’re doing your nightly backup.
  - Secure your script by using environment variables for password. Putting your plaintext db password into a script like this isn’t the most secure idea in the world.
