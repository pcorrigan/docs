#!/bin/bash
# Location of Mongo's data folder (Dockerized Mongo)
MONGO_DATA_DIR=/dsw/mongo/data
# - or your Mongo without using Docker
# - MONGO_DATA_DIR=/data/db
# Target for storing backups
TARGET_DIR=/var/backups/dsw
# Backup
BACKUP_FILE=$TARGET_DIR/backup_$(date +%d%m%y-%H%M).tgz
tar czf $BACKUP_FILE $MONGO_DATA_DIR
