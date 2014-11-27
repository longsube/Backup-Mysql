#!/bin/bash
backup_dir="/var/lib/backups/mysql"
filenamenova="${backup_dir}/mysql-nova-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenamecinder="${backup_dir}/mysql-cinder-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenameglance="${backup_dir}/mysql-glance-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenamekeystone="${backup_dir}/mysql-keystone-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenameneutron="${backup_dir}/mysql-neutron-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenameinformation_schema="${backup_dir}/mysql-information_schema-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenameperformance_schema="${backup_dir}/mysql-performance_schema-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
filenamemysql="${backup_dir}/mysql-mysql-`hostname`-`eval date +%Y%m%d-%H%M%S`.sql.gz"
# Dump the nova MySQL database
mysqldump --opt -u root -p nova | gzip > $filenamenova
# Dump the nova MySQL database
mysqldump --opt -u root -p nova | gzip > $filenamenova
# Dump the nova MySQL database
mysqldump --opt -u root -p nova | gzip > $filenamenova
# Dump the nova MySQL database
mysqldump --opt -u root -p nova | gzip > $filenamenova
# Dump the nova MySQL database
mysqldump --opt -u root -p nova | gzip > $filenamenova
# Delete backups older than 7 days
find $backup_dir -ctime 7 -type f -delete


mysqldump --opt nova > nova.sql
