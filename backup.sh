#!/bin/bash
backup_dir="/var/lib/backups/mysql"
filename="${backup_dir}/mysql-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
# Dump the entire MySQL database
mysqldump --opt -u root -pWelcome123$ --all-databases | gzip > $filename
# Delete backups older than 7 days
find $backup_dir -ctime 7 -type f -delete
