#!/usr/bin/env bash
mkdir -p /backups
cd /backups

which tar &>/dev/null
[ $? -eq 0 ] || { echo "[ERROR] : tar command not found. Please install it before proceeding."; exit 1; }

now=$(date +"%d_%m_%Y")

tar -zcvpf /backups/fullbackup_$now.tar.gz --directory=/ --exclude=proc --exclude=sys --exclude=dev/pts --exclude=backups .
