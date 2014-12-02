#!/bin/bash
backup_dir="/root/backup/mysql"
filename="${backup_dir}/mysql-`hostname`-`eval date +%d%m%Y-%H%M%S`.sql.gz"
# Dump the entire MySQL database
mysqldump --opt -u root --all-databases | gzip > $filename
# Delete backups older than 7 days
# find $backup_dir -ctime 7 -type f -delete
